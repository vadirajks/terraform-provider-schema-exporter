resource "google_identity_platform_default_supported_idp_config" "name" {
  client_id = string (Required)
  client_secret = string (Required)
  idp_id = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
