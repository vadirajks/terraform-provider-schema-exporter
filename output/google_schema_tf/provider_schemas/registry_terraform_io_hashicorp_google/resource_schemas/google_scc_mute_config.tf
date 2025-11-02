resource "google_scc_mute_config" "name" {
  filter = string (Required)
  mute_config_id = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  expiry_time = string (Optional)
  id = string (Optional, Computed)
  most_recent_editor = string (Computed)
  name = string (Computed)
  type = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
