resource "google_netapp_backup_policy" "name" {
  daily_backup_limit = number (Required)
  location = string (Required)
  monthly_backup_limit = number (Required)
  name = string (Required)
  weekly_backup_limit = number (Required)
  assigned_volume_count = number (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
