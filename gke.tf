resource "google_container_cluster" "main_gke_cluster" {
    provider   = google-beta
    name       = "${var.name_prefix}-cluster"
    location   = var.zone
    network    = var.network
    subnetwork = var.subnetwork

    remove_default_node_pool = true
    initial_node_count = var.gke_node_count

    node_config {
        machine_type = var.gke_machine_type

        workload_metadata_config {
            mode = "GKE_METADATA"
        }
    }

    addons_config {

        istio_config {

        disabled = false
        auth     = "AUTH_NONE"

        }

    }

    workload_identity_config {
        workload_pool = "${var.gcp_project_id}.svc.id.goog"
    }

}

resource "google_container_node_pool" "primary_nodes" {
  provider   = google-beta
  name       = "default-node-pool"
  cluster    = google_container_cluster.main_gke_cluster.name
  location   = var.zone

  node_count = var.gke_node_count

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }


}

data "google_container_cluster" "main_gke_cluster" {
  location = var.zone
  name     = google_container_cluster.main_gke_cluster.name
}
