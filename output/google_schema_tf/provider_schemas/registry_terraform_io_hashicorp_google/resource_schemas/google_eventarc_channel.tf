resource "google_eventarc_channel" "name" {
  location = string (Required)
  name = string (Required)
  activation_token = string (Computed)
  create_time = string (Computed)
  crypto_key_name = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  pubsub_topic = string (Computed)
  state = string (Computed)
  third_party_provider = string (Optional)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
