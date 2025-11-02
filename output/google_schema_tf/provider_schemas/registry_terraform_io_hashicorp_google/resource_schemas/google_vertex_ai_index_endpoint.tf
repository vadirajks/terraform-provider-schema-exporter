resource "google_vertex_ai_index_endpoint" "name" {
  display_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  network = string (Optional)
  project = string (Optional, Computed)
  public_endpoint_domain_name = string (Computed)
  public_endpoint_enabled = bool (Optional)
  region = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Required)
  }

  private_service_connect_config block "list" (Optional) {
    enable_private_service_connect = bool (Required)
    project_allowlist = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
