resource "google_scc_v2_organization_mute_config" "name" {
  filter = string (Required)
  mute_config_id = string (Required)
  organization = string (Required)
  type = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  most_recent_editor = string (Computed)
  name = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
