resource "google_service_account_key" "name" {
  service_account_id = string (Required)
  id = string (Optional, Computed)
  keepers = ['map', 'string'] (Optional)
  key_algorithm = string (Optional)
  name = string (Computed)
  private_key = string (Computed)
  private_key_type = string (Optional)
  public_key = string (Computed)
  public_key_data = string (Optional)
  public_key_type = string (Optional)
  valid_after = string (Computed)
  valid_before = string (Computed)
}
