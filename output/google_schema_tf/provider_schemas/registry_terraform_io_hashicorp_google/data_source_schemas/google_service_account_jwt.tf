data "google_service_account_jwt" "name" {
  payload = string (Required)
  target_service_account = string (Required)
  delegates = ['set', 'string'] (Optional)
  expires_in = number (Optional)
  id = string (Optional, Computed)
  jwt = string (Computed)
}
