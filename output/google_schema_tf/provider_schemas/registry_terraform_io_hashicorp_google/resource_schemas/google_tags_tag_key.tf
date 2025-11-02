resource "google_tags_tag_key" "name" {
  parent = string (Required)
  short_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  namespaced_name = string (Computed)
  purpose = string (Optional)
  purpose_data = ['map', 'string'] (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
