resource "aws_backup_plan" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Computed)

  advanced_backup_setting block "set" (Optional) {
    backup_options = ['map', 'string'] (Required)
    resource_type = string (Required)
  }

  rule block "set" (Required) {
    rule_name = string (Required)
    target_vault_name = string (Required)
    completion_window = number (Optional)
    enable_continuous_backup = bool (Optional)
    recovery_point_tags = ['map', 'string'] (Optional)
    schedule = string (Optional)
    schedule_expression_timezone = string (Optional)
    start_window = number (Optional)

    copy_action block "set" (Optional) {
      destination_vault_arn = string (Required)

      lifecycle block "list" (Optional) {
        cold_storage_after = number (Optional)
        delete_after = number (Optional)
        opt_in_to_archive_for_supported_resources = bool (Optional, Computed)
      }
    }

    lifecycle block "list" (Optional) {
      cold_storage_after = number (Optional)
      delete_after = number (Optional)
      opt_in_to_archive_for_supported_resources = bool (Optional, Computed)
    }
  }
}
