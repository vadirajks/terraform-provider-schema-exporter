resource "google_scc_folder_scc_big_query_export" "name" {
  big_query_export_id = string (Required)
  dataset = string (Required)
  description = string (Required)
  filter = string (Required)
  folder = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  most_recent_editor = string (Computed)
  name = string (Computed)
  principal = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
