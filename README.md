
# GKE kubeflow cluster provision

## Prerequirements
 * GCP account 
 * configured gcloud SDK (init and auth)
 * installed kubectl
 * ansible [core 2.14.6] and collection kubernetes.core 2.4.0

## Configuration
Provide project id, region, zone, number of nodes and machine type in `variables.tf` file.

## Installation

Provision kubernetes cluster

```terraform
  terraform init
  terraform apply
```
Install kubeflow

```ansible
  ansible-playbook playbook.yaml
```
    