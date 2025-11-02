resource "google_dataplex_entry_link" "name" {
  entry_group_id = string (Required)
  entry_link_id = string (Required)
  entry_link_type = string (Required)
  location = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  entry_references block "list" (Required) {
    name = string (Required)
    path = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
