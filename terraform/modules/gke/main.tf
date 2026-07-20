# ==================================
# GKE CLUSTER
# ==================================

resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.region
  network    = var.network_name
  subnetwork = var.subnet_name
  remove_default_node_pool = true
  initial_node_count = 1
  deletion_protection = false
}

# ==================================
# GKE NODE POOL
# ==================================

resource "google_container_node_pool" "primary" {
  name = var.node_pool_name
  cluster = google_container_cluster.cluster.name #Attach this node pool to that cluster
  location = var.region
  node_count = var.node_count
  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}