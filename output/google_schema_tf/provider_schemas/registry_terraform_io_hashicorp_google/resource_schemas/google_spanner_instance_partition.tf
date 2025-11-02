resource "google_spanner_instance_partition" "name" {
  config = string (Required)
  display_name = string (Required)
  instance = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  node_count = number (Optional)
  processing_units = number (Optional)
  project = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
