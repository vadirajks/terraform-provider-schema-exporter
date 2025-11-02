data "google_service_account_id_token" "name" {
  target_audience = string (Required)
  delegates = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  id_token = string (Computed)
  include_email = bool (Optional)
  target_service_account = string (Optional)
}
