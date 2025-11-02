resource "google_iam_access_boundary_policy" "name" {
  name = string (Required)
  parent = string (Required)
  display_name = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)

  rules block "list" (Required) {
    description = string (Optional)

    access_boundary_rule block "list" (Optional) {
      available_permissions = ['list', 'string'] (Optional)
      available_resource = string (Optional)

      availability_condition block "list" (Optional) {
        expression = string (Required)
        description = string (Optional)
        location = string (Optional)
        title = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
