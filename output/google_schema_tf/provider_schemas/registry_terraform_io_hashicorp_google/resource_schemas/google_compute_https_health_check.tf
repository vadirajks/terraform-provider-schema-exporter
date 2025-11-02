resource "google_compute_https_health_check" "name" {
  name = string (Required)
  check_interval_sec = number (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  healthy_threshold = number (Optional)
  host = string (Optional)
  id = string (Optional, Computed)
  port = number (Optional)
  project = string (Optional, Computed)
  request_path = string (Optional)
  self_link = string (Computed)
  timeout_sec = number (Optional)
  unhealthy_threshold = number (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
