# Enable APIs

services = [
  "serviceusage.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "compute.googleapis.com",
  "servicenetworking.googleapis.com",
  "artifactregistry.googleapis.com",
  "container.googleapis.com",
  "apigee.googleapis.com"
]

#Apigee

project_id             = "apigeex-platform-dev"
region                 = "asia-south1"
vpc_name               = "apigeex-vpc"
subnet_name            = "apigeex-subnet"
subnet_cidr            = "10.10.0.0/24"
psa_range_name         = "apigee-range"
psa_cidr_size          = 22
apigee_instance_name   = "apigee-instance"
environment_name       = "dev"
environment_group_name = "dev-group"
hostnames              = ["api.dev.example.com"]
analytics_region       = "asia-south1"

#GKE
proxy_subnet_name = "gke-gateway-proxy-only-subnet"
proxy_subnet_cidr = "10.60.0.0/23"
cluster_name      = "apigeex-gke"
node_pool_name    = "primary-pool"
node_count        = 1
machine_type      = "e2-standard-2"

#AR
repository_name = "java-apps"