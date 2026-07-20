output "cluster_name" {
  value = google_container_cluster.cluster.name
}

output "cluster_endpoint" {
  value = google_container_cluster.cluster.endpoint
}

output "node_pool_name" {
  value = google_container_node_pool.primary.name
}