data "google_compute_ssl_policy" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  custom_features = ['set', 'string'] (Computed)
  description = string (Computed)
  enabled_features = ['set', 'string'] (Computed)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  min_tls_version = string (Computed)
  profile = string (Computed)
  project = string (Optional)
  self_link = string (Computed)
}
