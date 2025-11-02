resource "google_org_policy_policy" "name" {
  name = string (Required)
  parent = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  dry_run_spec block "list" (Optional) {
    etag = string (Computed)
    inherit_from_parent = bool (Optional)
    reset = bool (Optional)
    update_time = string (Computed)

    rules block "list" (Optional) {
      allow_all = string (Optional)
      deny_all = string (Optional)
      enforce = string (Optional)
      parameters = string (Optional)

      condition block "list" (Optional) {
        description = string (Optional)
        expression = string (Optional)
        location = string (Optional)
        title = string (Optional)
      }

      values block "list" (Optional) {
        allowed_values = ['list', 'string'] (Optional)
        denied_values = ['list', 'string'] (Optional)
      }
    }
  }

  spec block "list" (Optional) {
    etag = string (Computed)
    inherit_from_parent = bool (Optional)
    reset = bool (Optional)
    update_time = string (Computed)

    rules block "list" (Optional) {
      allow_all = string (Optional)
      deny_all = string (Optional)
      enforce = string (Optional)
      parameters = string (Optional)

      condition block "list" (Optional) {
        description = string (Optional)
        expression = string (Optional)
        location = string (Optional)
        title = string (Optional)
      }

      values block "list" (Optional) {
        allowed_values = ['list', 'string'] (Optional)
        denied_values = ['list', 'string'] (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
