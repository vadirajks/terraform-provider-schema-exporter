resource "google_apigee_envgroup" "name" {
  name = string (Required)
  org_id = string (Required)
  hostnames = ['list', 'string'] (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
