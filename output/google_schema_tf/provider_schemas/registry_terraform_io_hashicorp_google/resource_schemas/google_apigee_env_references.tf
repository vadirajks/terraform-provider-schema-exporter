resource "google_apigee_env_references" "name" {
  env_id = string (Required)
  name = string (Required)
  refers = string (Required)
  resource_type = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
