resource "google_data_catalog_entry_group" "name" {
  entry_group_id = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
