data "google_compute_region_ssl_certificate" "name" {
  name = string (Required)
  certificate = string (Computed)
  certificate_id = number (Computed)
  creation_timestamp = string (Computed)
  description = string (Computed)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  name_prefix = string (Computed)
  private_key = string (Computed)
  project = string (Optional)
  region = string (Optional)
  self_link = string (Computed)
}
