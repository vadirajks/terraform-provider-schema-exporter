resource "google_service_networking_peered_dns_domain" "name" {
  dns_suffix = string (Required)
  name = string (Required)
  network = string (Required)
  id = string (Optional, Computed)
  parent = string (Computed)
  project = string (Optional, Computed)
  service = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
