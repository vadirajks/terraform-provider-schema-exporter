data "aws_secretsmanager_secret_rotation" "name" {
  secret_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  rotation_enabled = bool (Computed)
  rotation_lambda_arn = string (Computed)
  rotation_rules = ['list', ['object', {'automatically_after_days': 'number', 'duration': 'string', 'schedule_expression': 'string'}]] (Computed)
}
