data "google_tags_tag_value" "name" {
  parent = string (Required)
  short_name = string (Required)
  create_time = string (Computed)
  description = string (Computed)
  id = string (Computed)
  name = string (Computed)
  namespaced_name = string (Computed)
  update_time = string (Computed)
}
