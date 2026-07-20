variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

# ==================================
# VPC NETWORK
# ================================== 

variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

# ==================================
# PSA
# ================================== 

variable "psa_range_name" {
  description = "Private Service Access range name"
  type        = string
}

variable "psa_cidr_size" {
  description = "Prefix length for PSA range"
  type        = number
}

# ==================================
# ProxyOnlySubnet
# ================================== 

variable "proxy_subnet_name" {
  description = "Proxy only subnet name"
  type        = string
}

variable "proxy_subnet_cidr" {
  description = "Proxy only subnet CIDR"
  type        = string
}