resource "google_certificate_manager_trust_config" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  allowlisted_certificates block "list" (Optional) {
    pem_certificate = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  trust_stores block "list" (Optional) {

    intermediate_cas block "list" (Optional) {
      pem_certificate = string (Optional)
    }

    trust_anchors block "list" (Optional) {
      pem_certificate = string (Optional)
    }
  }
}
