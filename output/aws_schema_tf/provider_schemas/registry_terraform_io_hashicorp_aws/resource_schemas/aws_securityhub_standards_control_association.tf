resource "aws_securityhub_standards_control_association" "name" {
  association_status = string (Required)
  security_control_id = string (Required)
  standards_arn = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  updated_reason = string (Optional)
}
