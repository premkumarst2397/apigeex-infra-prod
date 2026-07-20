# ==================================
#  NETWORK
# ==================================

output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "network_id" {
  value = google_compute_network.vpc.id
}

output "proxy_subnet_name" {
  value = google_compute_subnetwork.proxy_only_subnet.name
}

output "psa_range_name" {
  value = google_compute_global_address.psa_range.name
}

output "psa_range_id" {
  value = google_compute_global_address.psa_range.id
}