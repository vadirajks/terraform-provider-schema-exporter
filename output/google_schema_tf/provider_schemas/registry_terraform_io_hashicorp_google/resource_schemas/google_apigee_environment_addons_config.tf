resource "google_apigee_environment_addons_config" "name" {
  env_id = string (Required)
  analytics_enabled = bool (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
