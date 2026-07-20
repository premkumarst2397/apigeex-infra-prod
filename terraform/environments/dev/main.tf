module "project_services" {
  source     = "../../modules/project-services"
  project_id = var.project_id
  services   = var.services
}

module "network" {
  source            = "../../modules/network"
  project_id        = var.project_id
  region            = var.region
  vpc_name          = var.vpc_name
  subnet_name       = var.subnet_name
  subnet_cidr       = var.subnet_cidr
  psa_range_name    = var.psa_range_name
  psa_cidr_size     = var.psa_cidr_size
  proxy_subnet_name = var.proxy_subnet_name
  proxy_subnet_cidr = var.proxy_subnet_cidr
  depends_on = [
    module.project_services
  ]
}

module "apigee" {
  source                 = "../../modules/apigee"
  project_id             = var.project_id
  region                 = var.region
  analytics_region       = var.analytics_region
  authorized_network     = module.network.network_id
  apigee_instance_name   = var.apigee_instance_name
  environment_name       = var.environment_name
  environment_group_name = var.environment_group_name
  hostnames              = var.hostnames
  depends_on = [
    module.network
  ]
}

module "gke" {
  source         = "../../modules/gke"
  project_id     = var.project_id
  region         = var.region
  cluster_name   = var.cluster_name
  node_pool_name = var.node_pool_name
  node_count     = var.node_count
  machine_type   = var.machine_type
  network_name   = var.vpc_name
  subnet_name    = var.subnet_name
  depends_on = [
    module.network
  ]
}

module "artifact_registry" {
  source          = "../../modules/artifact-registry"
  project_id      = var.project_id
  region          = var.region
  repository_name = var.repository_name
  depends_on = [
    module.project_services
  ]
}