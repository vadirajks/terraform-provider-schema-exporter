resource "google_identity_platform_tenant_oauth_idp_config" "name" {
  client_id = string (Required)
  display_name = string (Required)
  issuer = string (Required)
  name = string (Required)
  tenant = string (Required)
  client_secret = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
