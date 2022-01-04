variable "project_id" {
  description = "GCP project name"
}

variable "cluster_name" {
  description = "GKE Cluster name"
}

variable "region" {
  description = "region for GKE cluster"
}

variable "network" {
  description = "Network for GKE cluster"
}

variable "subnetwork" {
  description = "Subnetwork for GKE cluster"
}

variable "authorized_source_ranges" {
  description = "Authorized source ranges that can access GKE" 
}

variable "gke_master_ipv4_cidr_block" {
  type    = string
  default = "172.23.0.0/28"
}

variable "cluster_secondary_range_name" {
  type    = string
  default = "pods"
}

variable "services_secondary_range_name" {
  type    = string
  default = "services"
}

variable "channel" {
  type    = string
  default = "REGULAR"
}
