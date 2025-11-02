resource "google_app_engine_service_split_traffic" "name" {
  service = string (Required)
  id = string (Optional, Computed)
  migrate_traffic = bool (Optional)
  project = string (Optional, Computed)

  split block "list" (Required) {
    allocations = ['map', 'string'] (Required)
    shard_by = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
