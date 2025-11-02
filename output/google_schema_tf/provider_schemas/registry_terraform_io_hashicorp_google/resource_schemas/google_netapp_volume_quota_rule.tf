resource "google_netapp_volume_quota_rule" "name" {
  disk_limit_mib = number (Required)
  name = string (Required)
  type = string (Required)
  volume_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  state_details = string (Computed)
  target = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
