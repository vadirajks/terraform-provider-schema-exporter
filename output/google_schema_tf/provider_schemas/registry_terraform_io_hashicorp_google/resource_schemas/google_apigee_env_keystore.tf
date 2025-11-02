resource "google_apigee_env_keystore" "name" {
  env_id = string (Required)
  aliases = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
