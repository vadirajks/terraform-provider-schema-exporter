data "google_iam_policy" "name" {
  id = string (Optional, Computed)
  policy_data = string (Computed)

  audit_config block "set" (Optional) {
    service = string (Required)

    audit_log_configs block "set" (Required) {
      log_type = string (Required)
      exempted_members = ['set', 'string'] (Optional)
    }
  }

  binding block "set" (Optional) {
    members = ['set', 'string'] (Required)
    role = string (Required)

    condition block "list" (Optional) {
      expression = string (Required)
      title = string (Required)
      description = string (Optional)
    }
  }
}
