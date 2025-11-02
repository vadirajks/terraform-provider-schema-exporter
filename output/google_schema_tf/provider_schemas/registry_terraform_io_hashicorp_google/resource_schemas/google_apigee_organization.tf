resource "google_apigee_organization" "name" {
  project_id = string (Required)
  analytics_region = string (Optional)
  api_consumer_data_encryption_key_name = string (Optional)
  api_consumer_data_location = string (Optional)
  apigee_project_id = string (Computed)
  authorized_network = string (Optional)
  billing_type = string (Optional, Computed)
  ca_certificate = string (Computed)
  control_plane_encryption_key_name = string (Optional)
  description = string (Optional)
  disable_vpc_peering = bool (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  retention = string (Optional)
  runtime_database_encryption_key_name = string (Optional)
  runtime_type = string (Optional)
  subscription_type = string (Computed)

  properties block "list" (Optional) {

    property block "list" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
