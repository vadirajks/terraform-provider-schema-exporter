resource "google_firebase_app_check_debug_token" "name" {
  app_id = string (Required)
  display_name = string (Required)
  token = string (Required)
  debug_token_id = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
