
# GKE kubeflow cluster provision

## Prerequirements
 * GCP account 
 * configured gcloud SDK (init and auth)
 * installed kubectl

## Configuration
Provide project id, region, zone, number of nodes and machine type in `variables.tf` file.

## Installation

Provision kubernetes cluster

```terraform
  terraform init
  terraform apply
```
Install kubeflow

```bash
  ./kubeflow_init.sh
```
    
