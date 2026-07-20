resource "google_artifact_registry_repository" "repository" {
  location = var.region
  repository_id = var.repository_name
  description = "Docker images for platform applications"
  format = var.repository_format
}

