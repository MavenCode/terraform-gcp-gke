output "gke_host" {
  value = "https://${google_container_cluster.main_gke_cluster.endpoint}"
}

output "gke_username" {
  value = "${google_container_cluster.main_gke_cluster.master_auth.0.username}"
}

output "gke_password" {
  value = "${google_container_cluster.main_gke_cluster.master_auth.0.password}"
}

output "gke_client_certificate" {
  value = "${base64decode(google_container_cluster.main_gke_cluster.master_auth.0.client_certificate)}"
}

output "gke_client_key" {
  value = "${base64decode(google_container_cluster.main_gke_cluster.master_auth.0.client_key)}"
}

output "gke_cluster_ca_certificate" {
  value = "${base64decode(google_container_cluster.main_gke_cluster.master_auth.0.cluster_ca_certificate)}"
}