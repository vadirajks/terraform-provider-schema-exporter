resource "aws_backup_restore_testing_selection" "name" {
  iam_role_arn = string (Required)
  name = string (Required)
  protected_resource_type = string (Required)
  restore_testing_plan_name = string (Required)
  protected_resource_arns = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  restore_metadata_overrides = ['map', 'string'] (Optional, Computed)
  validation_window_hours = number (Optional, Computed)

  protected_resource_conditions block "list" (Optional) {

    string_equals block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    string_not_equals block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }
}
