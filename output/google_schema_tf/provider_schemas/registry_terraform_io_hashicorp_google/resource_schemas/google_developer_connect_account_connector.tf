resource "google_developer_connect_account_connector" "name" {
  account_connector_id = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  oauth_start_uri = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  provider_oauth_config block "list" (Optional) {
    scopes = ['list', 'string'] (Required)
    system_provider_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
