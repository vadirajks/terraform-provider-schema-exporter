resource "google_iam_oauth_client" "name" {
  allowed_grant_types = ['list', 'string'] (Required)
  allowed_redirect_uris = ['list', 'string'] (Required)
  allowed_scopes = ['list', 'string'] (Required)
  location = string (Required)
  oauth_client_id = string (Required)
  client_id = string (Computed)
  client_type = string (Optional)
  description = string (Optional)
  disabled = bool (Optional)
  display_name = string (Optional)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
