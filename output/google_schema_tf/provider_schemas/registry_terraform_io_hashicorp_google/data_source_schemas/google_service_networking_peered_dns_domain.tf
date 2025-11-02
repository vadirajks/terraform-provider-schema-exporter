data "google_service_networking_peered_dns_domain" "name" {
  name = string (Required)
  network = string (Required)
  project = string (Required)
  service = string (Required)
  dns_suffix = string (Computed)
  id = string (Optional, Computed)
  parent = string (Computed)
}
