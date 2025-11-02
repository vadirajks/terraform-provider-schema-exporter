resource "google_filestore_backup" "name" {
  location = string (Required)
  name = string (Required)
  source_file_share = string (Required)
  source_instance = string (Required)
  capacity_gb = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  download_bytes = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  source_instance_tier = string (Computed)
  state = string (Computed)
  storage_bytes = string (Computed)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
