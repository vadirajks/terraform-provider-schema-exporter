resource "google_service_account_key" "name" { // Ephemeral Resource
  name = string (Required)
  key_algorithm = string (Computed)
  public_key = string (Computed)
  public_key_type = string (Optional)
}
