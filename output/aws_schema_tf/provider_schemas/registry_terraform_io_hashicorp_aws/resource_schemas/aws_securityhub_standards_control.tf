resource "aws_securityhub_standards_control" "name" {
  control_status = string (Required)
  standards_control_arn = string (Required)
  control_id = string (Computed)
  control_status_updated_at = string (Computed)
  description = string (Computed)
  disabled_reason = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  related_requirements = ['list', 'string'] (Computed)
  remediation_url = string (Computed)
  severity_rating = string (Computed)
  title = string (Computed)
}
