resource "google_pubsub_lite_subscription" "name" {
  name = string (Required)
  topic = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  zone = string (Optional)

  delivery_config block "list" (Optional) {
    delivery_requirement = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
