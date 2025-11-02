resource "google_apigee_developer" "name" {
  email = string (Required)
  first_name = string (Required)
  last_name = string (Required)
  org_id = string (Required)
  user_name = string (Required)
  created_at = string (Computed)
  id = string (Optional, Computed)
  last_modified_at = string (Computed)
  organizatio_name = string (Computed)
  status = string (Computed)

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
