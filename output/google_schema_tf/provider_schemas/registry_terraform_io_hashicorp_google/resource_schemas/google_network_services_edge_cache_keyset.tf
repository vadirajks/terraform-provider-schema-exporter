resource "google_network_services_edge_cache_keyset" "name" {
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  public_key block "list" (Optional) {
    id = string (Required)
    managed = bool (Optional)
    value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  validation_shared_keys block "list" (Optional) {
    secret_version = string (Required)
  }
}
