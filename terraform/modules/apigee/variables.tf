variable "project_id" {
  type = string
}

variable "region" {
  type = string
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

variable "analytics_region" {
  description = "Apigee Analytics Region"
  type        = string
}

variable "authorized_network" {
  description = "VPC used by Apigee"
  type        = string
}