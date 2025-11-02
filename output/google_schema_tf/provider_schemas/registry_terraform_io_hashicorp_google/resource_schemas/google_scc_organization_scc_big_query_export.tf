resource "google_scc_organization_scc_big_query_export" "name" {
  big_query_export_id = string (Required)
  organization = string (Required)
  create_time = string (Computed)
  dataset = string (Optional)
  description = string (Optional)
  filter = string (Optional)
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
