resource "google_pubsub_schema" "name" {
  name = string (Required)
  definition = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
