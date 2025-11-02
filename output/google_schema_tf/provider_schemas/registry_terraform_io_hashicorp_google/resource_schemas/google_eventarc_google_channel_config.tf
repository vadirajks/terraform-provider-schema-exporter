resource "google_eventarc_google_channel_config" "name" {
  location = string (Required)
  name = string (Required)
  crypto_key_name = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
