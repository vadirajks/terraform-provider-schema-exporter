resource "google_service_account_access_token" "name" { // Ephemeral Resource
  scopes = ['set', 'string'] (Required)
  target_service_account = string (Required)
  access_token = string (Computed)
  delegates = ['set', 'string'] (Optional)
  lifetime = string (Optional, Computed)
}
