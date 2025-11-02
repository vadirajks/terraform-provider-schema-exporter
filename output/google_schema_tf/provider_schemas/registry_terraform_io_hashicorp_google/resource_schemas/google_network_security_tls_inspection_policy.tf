resource "google_network_security_tls_inspection_policy" "name" {
  ca_pool = string (Required)
  name = string (Required)
  create_time = string (Computed)
  custom_tls_features = ['list', 'string'] (Optional)
  description = string (Optional)
  exclude_public_ca_set = bool (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  min_tls_version = string (Optional)
  project = string (Optional, Computed)
  tls_feature_profile = string (Optional)
  trust_config = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
