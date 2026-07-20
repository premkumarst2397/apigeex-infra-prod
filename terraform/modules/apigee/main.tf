# ==================================
# APIGEE ORGANIZATION
# ==================================

resource "google_apigee_organization" "org" {
  project_id = var.project_id
  analytics_region = var.analytics_region
  authorized_network = var.authorized_network
}

# ==================================
# APIGEE INSTANCE
# ==================================

resource "google_apigee_instance" "instance" {
  name = var.apigee_instance_name
  location = var.region
  org_id = google_apigee_organization.org.id
}

# ==================================
# APIGEE ENVIRONMENT
# ==================================

resource "google_apigee_environment" "environment" {
  name = var.environment_name
  org_id = google_apigee_organization.org.id
}

# ==================================
# APIGEE INSTANCE ATTACHMENT
# ==================================

resource "google_apigee_instance_attachment" "attachment" {
  environment = google_apigee_environment.environment.name
  instance_id = google_apigee_instance.instance.id
}

# ==================================
# APIGEE ENVIRONMENT GROUP
# ==================================

resource "google_apigee_envgroup" "envgroup" {
  name = var.environment_group_name
  hostnames = var.hostnames
  org_id = google_apigee_organization.org.id
}

# ==================================
# APIGEE ENVIRONMENT GROUP ATTACHMENT
# ==================================

resource "google_apigee_envgroup_attachment" "envgroup_attachment" {
  envgroup_id = google_apigee_envgroup.envgroup.id
  environment = google_apigee_environment.environment.name
}