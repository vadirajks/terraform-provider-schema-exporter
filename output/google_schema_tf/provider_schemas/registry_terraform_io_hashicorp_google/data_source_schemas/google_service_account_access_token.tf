data "google_service_account_access_token" "name" {
  scopes = ['set', 'string'] (Required)
  target_service_account = string (Required)
  access_token = string (Computed)
  delegates = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  lifetime = string (Optional)
}
