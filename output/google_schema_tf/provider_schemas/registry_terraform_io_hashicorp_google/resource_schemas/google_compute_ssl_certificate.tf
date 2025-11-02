resource "google_compute_ssl_certificate" "name" {
  certificate = string (Required)
  private_key = string (Required)
  certificate_id = number (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
