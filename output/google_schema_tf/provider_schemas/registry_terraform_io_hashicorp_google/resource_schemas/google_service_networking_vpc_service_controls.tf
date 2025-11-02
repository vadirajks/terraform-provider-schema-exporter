resource "google_service_networking_vpc_service_controls" "name" {
  enabled = bool (Required)
  network = string (Required)
  service = string (Required)
  id = string (Optional, Computed)
  project = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
