resource "google_compute_managed_ssl_certificate" "name" {
  certificate_id = number (Computed)
  creation_timestamp = string (Computed)
  description = string (Optional)
  expire_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  subject_alternative_names = ['list', 'string'] (Computed)
  type = string (Optional)

  managed block "list" (Optional) {
    domains = ['list', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
