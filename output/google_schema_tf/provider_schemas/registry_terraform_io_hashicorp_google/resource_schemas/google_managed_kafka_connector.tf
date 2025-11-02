resource "google_managed_kafka_connector" "name" {
  connect_cluster = string (Required)
  connector_id = string (Required)
  location = string (Required)
  configs = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  task_restart_policy block "list" (Optional) {
    maximum_backoff = string (Optional)
    minimum_backoff = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
