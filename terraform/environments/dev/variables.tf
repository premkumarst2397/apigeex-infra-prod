variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "psa_range_name" {
  type = string
}

variable "psa_cidr_size" {
  type = number
}

variable "apigee_instance_name" {
  type = string
}

variable "environment_name" {
  type = string
}

variable "environment_group_name" {
  type = string
}

variable "hostnames" {
  type = list(string)
}

variable "proxy_subnet_name" {
  type = string
}

variable "proxy_subnet_cidr" {
  type = string
}

variable "services" {
  type = list(string)
}

#GKE

variable "cluster_name" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "node_count" {
  type = number
}

variable "machine_type" {
  type = string
}

#ARTIFACT REGISTRY

variable "repository_name" {
  type = string
}

#APIGEE
variable "analytics_region" {
  type = string
}