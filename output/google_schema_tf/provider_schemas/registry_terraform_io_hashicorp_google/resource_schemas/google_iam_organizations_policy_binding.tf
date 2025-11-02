resource "google_iam_organizations_policy_binding" "name" {
  location = string (Required)
  organization = string (Required)
  policy = string (Required)
  policy_binding_id = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  policy_kind = string (Optional)
  policy_uid = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  condition block "list" (Optional) {
    description = string (Optional)
    expression = string (Optional)
    location = string (Optional)
    title = string (Optional)
  }

  target block "list" (Required) {
    principal_set = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
