resource "google_iam_principal_access_boundary_policy" "name" {
  location = string (Required)
  organization = string (Required)
  principal_access_boundary_policy_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  details block "list" (Optional) {
    enforcement_version = string (Optional, Computed)

    rules block "list" (Required) {
      effect = string (Required)
      resources = ['list', 'string'] (Required)
      description = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
