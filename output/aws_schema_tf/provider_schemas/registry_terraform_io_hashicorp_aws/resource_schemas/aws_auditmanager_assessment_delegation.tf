resource "aws_auditmanager_assessment_delegation" "name" {
  assessment_id = string (Required)
  control_set_id = string (Required)
  role_arn = string (Required)
  role_type = string (Required)
  comment = string (Optional)
  delegation_id = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
