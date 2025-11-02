resource "google_site_verification_owner" "name" {
  email = string (Required)
  web_resource_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
