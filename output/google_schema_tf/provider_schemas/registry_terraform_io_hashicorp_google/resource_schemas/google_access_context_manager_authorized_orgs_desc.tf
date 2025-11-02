resource "google_access_context_manager_authorized_orgs_desc" "name" {
  name = string (Required)
  parent = string (Required)
  asset_type = string (Optional)
  authorization_direction = string (Optional)
  authorization_type = string (Optional)
  create_time = string (Computed)
  id = string (Optional, Computed)
  orgs = ['list', 'string'] (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
