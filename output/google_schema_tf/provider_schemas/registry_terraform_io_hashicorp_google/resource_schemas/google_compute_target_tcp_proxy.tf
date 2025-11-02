resource "google_compute_target_tcp_proxy" "name" {
  backend_service = string (Required)
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  proxy_bind = bool (Optional, Computed)
  proxy_header = string (Optional)
  proxy_id = number (Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
