resource "aws_ssm_service_setting" "name" {
  setting_id = string (Required)
  setting_value = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
