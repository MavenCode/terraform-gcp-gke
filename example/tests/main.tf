module "gke" {
    source = "git@github.com:MavenCode/terraform-gcp-gke.git"

    gcp_project_id = var.gcp_project_id
    name_prefix = var.name_prefix
    zone = var.zone
    gke_machine_type = var.gke_machine_type
    network = var.network
    subnetwork = var.subnetwork
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
}
