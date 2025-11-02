resource "google_compute_target_https_proxy" "name" {
  name = string (Required)
  url_map = string (Required)
  certificate_manager_certificates = ['list', 'string'] (Optional)
  certificate_map = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  http_keep_alive_timeout_sec = number (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  proxy_bind = bool (Optional, Computed)
  proxy_id = number (Computed)
  quic_override = string (Optional)
  self_link = string (Computed)
  server_tls_policy = string (Optional)
  ssl_certificates = ['list', 'string'] (Optional)
  ssl_policy = string (Optional)
  tls_early_data = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
