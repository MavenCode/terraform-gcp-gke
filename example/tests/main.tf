module "gke" {
    source = "git@github.com:MavenCode/terraform-gcp-gke.git"
    project_id = var.project_id
    cluster_name = var.cluster_name
    region = var.region
    network = var.network
    subnetwork = var.subnetwork
}
