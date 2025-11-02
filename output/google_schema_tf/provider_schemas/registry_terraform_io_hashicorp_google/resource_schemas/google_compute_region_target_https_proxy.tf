resource "google_compute_region_target_https_proxy" "name" {
  name = string (Required)
  url_map = string (Required)
  certificate_manager_certificates = ['list', 'string'] (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  http_keep_alive_timeout_sec = number (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  proxy_id = number (Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  server_tls_policy = string (Optional)
  ssl_certificates = ['list', 'string'] (Optional)
  ssl_policy = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
