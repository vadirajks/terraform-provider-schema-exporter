resource "aws_route53recoveryreadiness_readiness_check" "name" {
  readiness_check_name = string (Required)
  resource_set_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
