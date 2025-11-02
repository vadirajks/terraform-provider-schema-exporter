data "google_dns_record_set" "name" {
  managed_zone = string (Required)
  name = string (Required)
  type = string (Required)
  id = string (Optional, Computed)
  project = string (Optional)
  rrdatas = ['list', 'string'] (Computed)
  ttl = number (Computed)
}
