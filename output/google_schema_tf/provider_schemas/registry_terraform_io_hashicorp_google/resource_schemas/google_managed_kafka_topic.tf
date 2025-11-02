resource "google_managed_kafka_topic" "name" {
  cluster = string (Required)
  location = string (Required)
  replication_factor = number (Required)
  topic_id = string (Required)
  configs = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  partition_count = number (Optional)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
