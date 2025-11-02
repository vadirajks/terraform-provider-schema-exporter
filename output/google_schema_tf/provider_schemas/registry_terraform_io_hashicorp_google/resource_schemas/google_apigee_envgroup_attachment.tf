resource "google_apigee_envgroup_attachment" "name" {
  envgroup_id = string (Required)
  environment = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
