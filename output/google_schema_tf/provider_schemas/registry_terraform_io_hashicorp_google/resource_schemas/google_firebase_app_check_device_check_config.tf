resource "google_firebase_app_check_device_check_config" "name" {
  app_id = string (Required)
  key_id = string (Required)
  private_key = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  private_key_set = bool (Computed)
  project = string (Optional, Computed)
  token_ttl = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
