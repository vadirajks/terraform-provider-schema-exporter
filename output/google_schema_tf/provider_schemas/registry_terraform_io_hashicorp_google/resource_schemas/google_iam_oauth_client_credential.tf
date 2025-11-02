resource "google_iam_oauth_client_credential" "name" {
  location = string (Required)
  oauth_client_credential_id = string (Required)
  oauthclient = string (Required)
  client_secret = string (Computed)
  disabled = bool (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
