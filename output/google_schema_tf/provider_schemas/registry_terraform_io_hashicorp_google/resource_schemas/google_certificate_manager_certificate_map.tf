resource "google_certificate_manager_certificate_map" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  gclb_targets = ['list', ['object', {'ip_configs': ['list', ['object', {'ip_address': 'string', 'ports': ['list', 'number']}]], 'target_https_proxy': 'string', 'target_ssl_proxy': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
