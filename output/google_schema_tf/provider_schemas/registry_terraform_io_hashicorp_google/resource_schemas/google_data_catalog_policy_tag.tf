resource "google_data_catalog_policy_tag" "name" {
  display_name = string (Required)
  taxonomy = string (Required)
  child_policy_tags = ['list', 'string'] (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  parent_policy_tag = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
