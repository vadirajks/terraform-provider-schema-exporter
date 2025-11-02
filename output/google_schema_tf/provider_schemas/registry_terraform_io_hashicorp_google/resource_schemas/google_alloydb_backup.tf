resource "google_alloydb_backup" "name" {
  backup_id = string (Required)
  cluster_name = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  cluster_uid = string (Computed)
  create_time = string (Computed)
  delete_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  encryption_info = ['list', ['object', {'encryption_type': 'string', 'kms_key_versions': ['list', 'string']}]] (Computed)
  etag = string (Computed)
  expiry_quantity = ['list', ['object', {'retention_count': 'number', 'total_retention_count': 'number'}]] (Computed)
  expiry_time = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  size_bytes = string (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)

  encryption_config block "list" (Optional) {
    kms_key_name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
