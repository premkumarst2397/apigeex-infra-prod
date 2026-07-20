output "instance_name" {
  value = google_apigee_instance.instance.name
}

output "environment_name" {
  value = google_apigee_environment.environment.name
}

output "environment_group_name" {
  value = google_apigee_envgroup.envgroup.name
}