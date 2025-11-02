resource "google_compute_target_http_proxy" "name" {
  name = string (Required)
  url_map = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  http_keep_alive_timeout_sec = number (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  proxy_bind = bool (Optional, Computed)
  proxy_id = number (Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
