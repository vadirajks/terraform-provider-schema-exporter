resource "google_compute_region_target_http_proxy" "name" {
  name = string (Required)
  url_map = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  http_keep_alive_timeout_sec = number (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  proxy_id = number (Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
