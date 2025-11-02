resource "google_apigee_environment_keyvaluemaps_entries" "name" {
  env_keyvaluemap_id = string (Required)
  name = string (Required)
  value = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
