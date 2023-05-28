#!/bin/bash
export PIPELINE_VERSION=1.8.5
#gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw kubernetes_cluster_region)
kubectl apply -k "github.com/kubeflow/pipelines/manifests/kustomize/cluster-scoped-resources?ref=$PIPELINE_VERSION"
kubectl wait --for condition=established --timeout=60s crd/applications.app.k8s.io
kubectl apply -k "github.com/kubeflow/pipelines/manifests/kustomize/env/dev?ref=$PIPELINE_VERSION"
output="$(kubectl describe configmap inverse-proxy-config -n kubeflow | grep googleusercontent.com)"
echo $output
while [[ -n $output ]]; do
     sleep 1
     output="$(kubectl describe configmap inverse-proxy-config -n kubeflow | grep googleusercontent.com)"
     echo $output
done