resource "google_compute_snapshot_settings" "name" {
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  storage_location block "list" (Required) {
    policy = string (Required)

    locations block "set" (Optional) {
      location = string (Required)
      name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
