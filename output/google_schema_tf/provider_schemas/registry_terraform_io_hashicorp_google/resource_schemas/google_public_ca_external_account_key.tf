resource "google_public_ca_external_account_key" "name" {
  b64_mac_key = string (Computed)
  b64url_mac_key = string (Computed)
  id = string (Optional, Computed)
  key_id = string (Computed)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
