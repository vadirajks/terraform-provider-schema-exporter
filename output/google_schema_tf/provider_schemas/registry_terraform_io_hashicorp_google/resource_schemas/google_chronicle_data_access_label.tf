resource "google_chronicle_data_access_label" "name" {
  data_access_label_id = string (Required)
  instance = string (Required)
  location = string (Required)
  udm_query = string (Required)
  author = string (Computed)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Computed)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
