resource "google_vertex_ai_tensorboard" "name" {
  display_name = string (Required)
  blob_storage_path_prefix = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  run_count = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
