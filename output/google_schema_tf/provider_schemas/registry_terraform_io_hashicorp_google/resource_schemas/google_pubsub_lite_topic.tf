resource "google_pubsub_lite_topic" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  zone = string (Optional)

  partition_config block "list" (Optional) {
    count = number (Required)

    capacity block "list" (Optional) {
      publish_mib_per_sec = number (Required)
      subscribe_mib_per_sec = number (Required)
    }
  }

  reservation_config block "list" (Optional) {
    throughput_reservation = string (Optional)
  }

  retention_config block "list" (Optional) {
    per_partition_bytes = string (Required)
    period = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
