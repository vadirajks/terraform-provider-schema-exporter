resource "google_firebase_app_check_recaptcha_enterprise_config" "name" {
  app_id = string (Required)
  site_key = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  token_ttl = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
