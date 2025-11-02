resource "aws_backup_restore_testing_plan" "name" {
  name = string (Required)
  schedule_expression = string (Required)
  arn = string (Computed)
  region = string (Optional, Computed)
  schedule_expression_timezone = string (Optional, Computed)
  start_window_hours = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  recovery_point_selection block "list" (Optional) {
    algorithm = string (Required)
    include_vaults = ['set', 'string'] (Required)
    recovery_point_types = ['set', 'string'] (Required)
    exclude_vaults = ['set', 'string'] (Optional, Computed)
    selection_window_days = number (Optional, Computed)
  }
}
