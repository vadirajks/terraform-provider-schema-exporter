resource "google_tags_tag_binding" "name" {
  parent = string (Required)
  tag_value = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
