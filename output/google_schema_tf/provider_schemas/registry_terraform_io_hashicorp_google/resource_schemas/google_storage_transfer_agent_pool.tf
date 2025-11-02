resource "google_storage_transfer_agent_pool" "name" {
  name = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  bandwidth_limit block "list" (Optional) {
    limit_mbps = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
