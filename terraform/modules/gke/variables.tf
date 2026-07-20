variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
}

variable "node_pool_name" {
  description = "Node Pool Name"
  type        = string
}

variable "node_count" {
  description = "Number of nodes"
  type        = number
}

variable "machine_type" {
  description = "GKE Node Machine Type"
  type        = string
}

variable "network_name" {
  description = "VPC Name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}