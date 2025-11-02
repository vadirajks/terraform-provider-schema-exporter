resource "google_secret_manager_secret_version" "name" { // Ephemeral Resource
  secret = string (Required)
  create_time = string (Computed)
  destroy_time = string (Computed)
  enabled = bool (Computed)
  is_secret_data_base64 = bool (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  secret_data = string (Computed)
  version = string (Optional)
}
