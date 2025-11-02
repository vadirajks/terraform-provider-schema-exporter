resource "google_compute_ssl_policy" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  custom_features = ['set', 'string'] (Optional)
  description = string (Optional)
  enabled_features = ['set', 'string'] (Computed)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  min_tls_version = string (Optional)
  profile = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
