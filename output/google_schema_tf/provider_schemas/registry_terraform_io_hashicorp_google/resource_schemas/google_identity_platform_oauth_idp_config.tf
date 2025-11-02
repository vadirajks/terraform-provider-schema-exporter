resource "google_identity_platform_oauth_idp_config" "name" {
  client_id = string (Required)
  issuer = string (Required)
  name = string (Required)
  client_secret = string (Optional)
  display_name = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  response_type block "list" (Optional) {
    code = bool (Optional)
    id_token = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
