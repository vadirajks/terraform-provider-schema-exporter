data "google_service_account_key" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  key_algorithm = string (Computed)
  public_key = string (Computed)
  public_key_type = string (Optional)
}
