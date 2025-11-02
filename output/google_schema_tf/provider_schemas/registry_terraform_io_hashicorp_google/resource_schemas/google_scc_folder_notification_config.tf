resource "google_scc_folder_notification_config" "name" {
  config_id = string (Required)
  folder = string (Required)
  pubsub_topic = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
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
