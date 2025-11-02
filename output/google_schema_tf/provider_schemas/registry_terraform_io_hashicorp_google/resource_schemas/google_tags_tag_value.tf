resource "google_tags_tag_value" "name" {
  parent = string (Required)
  short_name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  namespaced_name = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
