resource "google_monitoring_group" "name" {
  display_name = string (Required)
  filter = string (Required)
  id = string (Optional, Computed)
  is_cluster = bool (Optional)
  name = string (Computed)
  parent_name = string (Optional)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
