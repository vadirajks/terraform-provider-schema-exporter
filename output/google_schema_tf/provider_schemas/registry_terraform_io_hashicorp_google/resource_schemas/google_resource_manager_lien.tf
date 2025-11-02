resource "google_resource_manager_lien" "name" {
  origin = string (Required)
  parent = string (Required)
  reason = string (Required)
  restrictions = ['list', 'string'] (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
