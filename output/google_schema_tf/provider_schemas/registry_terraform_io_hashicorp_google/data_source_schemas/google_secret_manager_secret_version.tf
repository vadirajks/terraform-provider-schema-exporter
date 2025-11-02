data "google_secret_manager_secret_version" "name" {
  secret = string (Required)
  create_time = string (Computed)
  destroy_time = string (Computed)
  enabled = bool (Computed)
  fetch_secret_data = bool (Optional)
  id = string (Optional, Computed)
  is_secret_data_base64 = bool (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  secret_data = string (Computed)
  version = string (Optional, Computed)
}
