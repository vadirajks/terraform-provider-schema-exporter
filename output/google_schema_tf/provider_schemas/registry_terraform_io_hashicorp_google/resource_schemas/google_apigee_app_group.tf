resource "google_apigee_app_group" "name" {
  name = string (Required)
  org_id = string (Required)
  app_group_id = string (Computed)
  channel_id = string (Optional)
  channel_uri = string (Optional)
  created_at = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  last_modified_at = string (Computed)
  organization = string (Computed)
  status = string (Optional)

  attributes block "list" (Optional) {
    name = string (Optional)
    value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
