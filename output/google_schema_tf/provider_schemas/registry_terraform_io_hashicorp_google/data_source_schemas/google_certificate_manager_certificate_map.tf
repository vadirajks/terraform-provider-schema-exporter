data "google_certificate_manager_certificate_map" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  gclb_targets = ['list', ['object', {'ip_configs': ['list', ['object', {'ip_address': 'string', 'ports': ['list', 'number']}]], 'target_https_proxy': 'string', 'target_ssl_proxy': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Computed)
  project = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
}
