resource "google_iam_deny_policy" "name" {
  name = string (Required)
  parent = string (Required)
  display_name = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)

  rules block "list" (Required) {
    description = string (Optional)

    deny_rule block "list" (Optional) {
      denied_permissions = ['list', 'string'] (Optional)
      denied_principals = ['list', 'string'] (Optional)
      exception_permissions = ['list', 'string'] (Optional)
      exception_principals = ['list', 'string'] (Optional)

      denial_condition block "list" (Optional) {
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
