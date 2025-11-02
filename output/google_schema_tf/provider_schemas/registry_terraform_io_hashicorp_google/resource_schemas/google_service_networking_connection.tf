resource "google_service_networking_connection" "name" {
  network = string (Required)
  reserved_peering_ranges = ['list', 'string'] (Required)
  service = string (Required)
  deletion_policy = string (Optional)
  id = string (Optional, Computed)
  peering = string (Computed)
  update_on_creation_fail = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
