resource "google_compute_target_ssl_proxy" "name" {
  backend_service = string (Required)
  name = string (Required)
  certificate_map = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  proxy_header = string (Optional)
  proxy_id = number (Computed)
  self_link = string (Computed)
  ssl_certificates = ['list', 'string'] (Optional)
  ssl_policy = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
