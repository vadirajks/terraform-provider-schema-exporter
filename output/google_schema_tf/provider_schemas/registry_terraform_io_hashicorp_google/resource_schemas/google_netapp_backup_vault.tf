resource "google_netapp_backup_vault" "name" {
  location = string (Required)
  name = string (Required)
  backup_region = string (Optional)
  backup_vault_type = string (Optional, Computed)
  create_time = string (Computed)
  description = string (Optional)
  destination_backup_vault = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  source_backup_vault = string (Computed)
  source_region = string (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  backup_retention_policy block "list" (Optional) {
    backup_minimum_enforced_retention_days = number (Required)
    daily_backup_immutable = bool (Optional)
    manual_backup_immutable = bool (Optional)
    monthly_backup_immutable = bool (Optional)
    weekly_backup_immutable = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
