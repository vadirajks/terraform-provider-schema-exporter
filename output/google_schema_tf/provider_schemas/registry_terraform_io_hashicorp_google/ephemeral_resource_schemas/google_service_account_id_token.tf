resource "google_service_account_id_token" "name" { // Ephemeral Resource
  target_audience = string (Required)
  delegates = ['set', 'string'] (Optional)
  id_token = string (Computed)
  include_email = bool (Optional)
  target_service_account = string (Optional)
}
