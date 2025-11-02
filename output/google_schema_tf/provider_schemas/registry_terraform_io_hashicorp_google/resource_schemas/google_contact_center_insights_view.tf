resource "google_contact_center_insights_view" "name" {
  location = string (Required)
  create_time = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)
  value = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
