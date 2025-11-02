resource "google_apigee_flowhook" "name" {
  environment = string (Required)
  flow_hook_point = string (Required)
  org_id = string (Required)
  sharedflow = string (Required)
  continue_on_error = bool (Optional)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
