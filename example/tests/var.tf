variable "gcp_project_id" {
  description = "GCP project name"
}

variable "name_prefix" {
  description = "Prefix to be used when naming the different components of Feast"
}

variable "zone" {
  description = "zone for GKE"
}

variable "gke_machine_type" {
  description = "GKE node pool machine type"
  default     = "n1-standard-2"
}

variable "gke_node_count" {
  description = "Number of nodes in the GKE default node pool"
  default     = 1
}

variable "network" {
  description = "Network for GKE and Dataproc cluster"
}

variable "subnetwork" {
  description = "Subnetwork for GKE and Dataproc cluster"
}

variable "max_node_count" {
  description = "max node count"
}

variable "min_node_count" {
  description = "min node count"
}
