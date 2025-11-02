resource "aws_route53recoveryreadiness_recovery_group" "name" {
  recovery_group_name = string (Required)
  arn = string (Computed)
  cells = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
