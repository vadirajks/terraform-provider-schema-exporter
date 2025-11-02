resource "google_resource_manager_capability" "name" {
  capability_name = string (Required)
  parent = string (Required)
  value = bool (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
