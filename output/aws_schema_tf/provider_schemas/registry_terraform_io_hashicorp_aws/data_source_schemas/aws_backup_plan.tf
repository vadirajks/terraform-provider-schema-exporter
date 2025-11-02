data "aws_backup_plan" "name" {
  plan_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  rule = ['set', ['object', {'completion_window': 'number', 'copy_action': ['set', ['object', {'destination_vault_arn': 'string', 'lifecycle': ['list', ['object', {'cold_storage_after': 'number', 'delete_after': 'number', 'opt_in_to_archive_for_supported_resources': 'bool'}]]}]], 'enable_continuous_backup': 'bool', 'lifecycle': ['list', ['object', {'cold_storage_after': 'number', 'delete_after': 'number', 'opt_in_to_archive_for_supported_resources': 'bool'}]], 'recovery_point_tags': ['map', 'string'], 'rule_name': 'string', 'schedule': 'string', 'schedule_expression_timezone': 'string', 'start_window': 'number', 'target_vault_name': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  version = string (Computed)
}
