# ==================================
# NETWORK OUTPUTS
# ==================================

output "vpc_name" {
  value = module.network.vpc_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "network_id" {
  value = module.network.network_id
}

output "proxy_subnet_name" {
  value = module.network.proxy_subnet_name
}

# ==================================
# ARTIFACT REGISTRY OUTPUTS
# ==================================

output "artifact_repository_id" {
  value = module.artifact_registry.repository_id
}
# ==================================
# GKE
# ==================================
output "cluster_name" {
  value = module.gke.cluster_name
}

output "node_pool_name" {
  value = module.gke.node_pool_name
}