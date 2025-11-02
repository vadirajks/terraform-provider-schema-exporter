resource "aws_secretsmanager_secret_rotation" "name" {
  secret_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  rotate_immediately = bool (Optional)
  rotation_enabled = bool (Computed)
  rotation_lambda_arn = string (Optional)

  rotation_rules block "list" (Required) {
    automatically_after_days = number (Optional)
    duration = string (Optional)
    schedule_expression = string (Optional)
  }
}
