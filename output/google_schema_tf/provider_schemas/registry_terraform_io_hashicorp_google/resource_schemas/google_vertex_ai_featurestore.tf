resource "google_vertex_ai_featurestore" "name" {
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Required)
  }

  online_serving_config block "list" (Optional) {
    fixed_node_count = number (Optional)

    scaling block "list" (Optional) {
      max_node_count = number (Required)
      min_node_count = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
