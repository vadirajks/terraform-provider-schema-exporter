resource "google_scc_v2_organization_notification_config" "name" {
  config_id = string (Required)
  organization = string (Required)
  pubsub_topic = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  service_account = string (Computed)

  streaming_config block "list" (Required) {
    filter = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
