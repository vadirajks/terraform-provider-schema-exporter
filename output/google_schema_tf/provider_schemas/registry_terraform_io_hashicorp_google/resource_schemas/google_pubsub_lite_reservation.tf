resource "google_pubsub_lite_reservation" "name" {
  name = string (Required)
  throughput_capacity = number (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
