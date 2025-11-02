resource "google_compute_disk_async_replication" "name" {
  primary_disk = string (Required)
  id = string (Optional, Computed)

  secondary_disk block "list" (Required) {
    disk = string (Required)
    state = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
