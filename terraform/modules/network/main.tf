# ==================================
# VPC NETWORK
# ==================================      

resource "google_compute_network" "vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
}

# ==================================
# PRIMARY SUBNET
# ==================================

resource "google_compute_subnetwork" "subnet" {
  name = var.subnet_name
  region = var.region
  network = google_compute_network.vpc.id
  ip_cidr_range = var.subnet_cidr
}

# ==================================
# PRIVATE SERVICE ACCESS RANGE
# ==================================

resource "google_compute_global_address" "psa_range" {
  name = var.psa_range_name
  purpose = "VPC_PEERING"
  address_type = "INTERNAL"
  prefix_length = var.psa_cidr_size
  network = google_compute_network.vpc.id
}

# ==================================
# PRIVATE SERVICE ACCESS CONNECTION
# ==================================

resource "google_service_networking_connection" "private_vpc_connection" {
  network = google_compute_network.vpc.id
  service = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.psa_range.name]
}

# ==================================
# PROXY ONLY SUBNET
# ==================================

resource "google_compute_subnetwork" "proxy_only_subnet" {
  name = var.proxy_subnet_name
  region = var.region
  network = google_compute_network.vpc.id
  ip_cidr_range = var.proxy_subnet_cidr
  purpose = "REGIONAL_MANAGED_PROXY" #(Use this subnet only for Google-managed Layer 7 Load Balancer proxies.)
  role = "ACTIVE"
}