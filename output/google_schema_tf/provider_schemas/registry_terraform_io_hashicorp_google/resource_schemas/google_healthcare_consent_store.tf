resource "google_healthcare_consent_store" "name" {
  dataset = string (Required)
  name = string (Required)
  default_consent_ttl = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_consent_create_on_update = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
