resource "google_service_account_jwt" "name" { // Ephemeral Resource
  payload = string (Required)
  target_service_account = string (Required)
  delegates = ['set', 'string'] (Optional)
  expires_in = number (Optional)
  jwt = string (Computed)
}
