resource "google_site_verification_web_resource" "name" {
  verification_method = string (Required)
  id = string (Optional, Computed)
  owners = ['list', 'string'] (Computed)
  web_resource_id = string (Computed)

  site block "list" (Required) {
    identifier = string (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
