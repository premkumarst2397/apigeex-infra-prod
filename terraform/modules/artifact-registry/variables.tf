variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "repository_name" {
  description = "Artifact Registry Repository Name"
  type        = string
}

variable "repository_format" {
  description = "Artifact format"
  type        = string
  default     = "DOCKER"
}