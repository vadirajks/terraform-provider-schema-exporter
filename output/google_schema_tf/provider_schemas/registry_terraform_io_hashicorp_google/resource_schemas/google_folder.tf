resource "google_folder" "name" {
  display_name = string (Required)
  parent = string (Required)
  configured_capabilities = ['list', 'string'] (Computed)
  create_time = string (Computed)
  deletion_protection = bool (Optional)
  folder_id = string (Computed)
  id = string (Optional, Computed)
  lifecycle_state = string (Computed)
  management_project = string (Computed)
  name = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
