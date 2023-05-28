variable "gke_machine_type" {
  default     = "n1-standard-1"
  description = "number of gke nodes"
}

variable "num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "gke_project_id" {
  default     = "kubeflow-386608"
}

variable "gke_region" {
  description = "region"
  default     = "us-central1"
}

variable "gke_zone" {
  description = "region"
  default     = "us-central1-a"
}