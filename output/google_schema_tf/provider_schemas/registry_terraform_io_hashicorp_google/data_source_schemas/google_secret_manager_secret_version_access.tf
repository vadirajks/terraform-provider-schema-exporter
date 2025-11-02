data "google_secret_manager_secret_version_access" "name" {
  secret = string (Required)
  id = string (Optional, Computed)
  is_secret_data_base64 = bool (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  secret_data = string (Computed)
  version = string (Optional, Computed)
}
