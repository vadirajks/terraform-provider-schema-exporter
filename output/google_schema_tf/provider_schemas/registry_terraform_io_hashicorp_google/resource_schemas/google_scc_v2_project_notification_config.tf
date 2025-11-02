resource "google_scc_v2_project_notification_config" "name" {
  config_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  pubsub_topic = string (Optional)
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
