resource "google_netapp_backup" "name" {
  location = string (Required)
  name = string (Required)
  vault_name = string (Required)
  backup_region = string (Computed)
  backup_type = string (Computed)
  chain_storage_bytes = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  source_snapshot = string (Optional)
  source_volume = string (Optional)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  volume_region = string (Computed)
  volume_usage_bytes = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
