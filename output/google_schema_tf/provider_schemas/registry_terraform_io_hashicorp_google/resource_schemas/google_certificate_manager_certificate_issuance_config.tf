resource "google_certificate_manager_certificate_issuance_config" "name" {
  key_algorithm = string (Required)
  lifetime = string (Required)
  name = string (Required)
  rotation_window_percentage = number (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  certificate_authority_config block "list" (Required) {

    certificate_authority_service_config block "list" (Optional) {
      ca_pool = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
