resource "google_organization_policy" "name" {
  constraint = string (Required)
  org_id = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)
  update_time = string (Computed)
  version = number (Optional, Computed)

  boolean_policy block "list" (Optional) {
    enforced = bool (Required)
  }

  list_policy block "list" (Optional) {
    inherit_from_parent = bool (Optional)
    suggested_value = string (Optional, Computed)

    allow block "list" (Optional) {
      all = bool (Optional)
      values = ['set', 'string'] (Optional)
    }

    deny block "list" (Optional) {
      all = bool (Optional)
      values = ['set', 'string'] (Optional)
    }
  }

  restore_policy block "list" (Optional) {
    default = bool (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
