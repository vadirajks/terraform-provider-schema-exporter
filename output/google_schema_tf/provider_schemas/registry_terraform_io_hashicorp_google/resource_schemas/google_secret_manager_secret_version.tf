resource "google_secret_manager_secret_version" "name" {
  secret = string (Required)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  destroy_time = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  is_secret_data_base64 = bool (Optional)
  name = string (Computed)
  secret_data = string (Optional)
  secret_data_wo = string (Optional)
  secret_data_wo_version = number (Optional)
  version = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
