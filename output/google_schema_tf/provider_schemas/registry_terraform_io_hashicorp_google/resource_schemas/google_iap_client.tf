resource "google_iap_client" "name" {
  brand = string (Required)
  display_name = string (Required)
  client_id = string (Computed)
  id = string (Optional, Computed)
  secret = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
