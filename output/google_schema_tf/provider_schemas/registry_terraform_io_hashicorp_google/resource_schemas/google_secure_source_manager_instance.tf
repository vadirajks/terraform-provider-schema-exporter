resource "google_secure_source_manager_instance" "name" {
  instance_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  host_config = ['list', ['object', {'api': 'string', 'git_http': 'string', 'git_ssh': 'string', 'html': 'string'}]] (Computed)
  id = string (Optional, Computed)
  kms_key = string (Optional)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  state_note = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  private_config block "list" (Optional) {
    is_private = bool (Required)
    ca_pool = string (Optional)
    http_service_attachment = string (Computed)
    ssh_service_attachment = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  workforce_identity_federation_config block "list" (Optional) {
    enabled = bool (Required)
  }
}
