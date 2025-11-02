resource "google_kms_crypto_key" "name" {
  key_ring = string (Required)
  name = string (Required)
  crypto_key_backend = string (Optional, Computed)
  destroy_scheduled_duration = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  import_only = bool (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  primary = ['list', ['object', {'name': 'string', 'state': 'string'}]] (Computed)
  purpose = string (Optional)
  rotation_period = string (Optional)
  skip_initial_version_creation = bool (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  version_template block "list" (Optional) {
    algorithm = string (Required)
    protection_level = string (Optional)
  }
}
