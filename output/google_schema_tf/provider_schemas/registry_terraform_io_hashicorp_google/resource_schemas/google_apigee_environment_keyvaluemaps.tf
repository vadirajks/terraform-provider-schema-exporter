resource "google_apigee_environment_keyvaluemaps" "name" {
  env_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
