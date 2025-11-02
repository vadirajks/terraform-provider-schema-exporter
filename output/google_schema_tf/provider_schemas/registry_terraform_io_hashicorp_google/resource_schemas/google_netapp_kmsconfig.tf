resource "google_netapp_kmsconfig" "name" {
  crypto_key_name = string (Required)
  location = string (Required)
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  instructions = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  service_account = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
