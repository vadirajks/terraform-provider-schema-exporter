data "google_iap_client" "name" {
  brand = string (Required)
  client_id = string (Required)
  display_name = string (Computed)
  id = string (Optional, Computed)
  secret = string (Computed)
}
