resource "google_storage_hmac_key" "name" {
  service_account_email = string (Required)
  access_id = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  secret = string (Computed)
  state = string (Optional)
  time_created = string (Computed)
  updated = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
