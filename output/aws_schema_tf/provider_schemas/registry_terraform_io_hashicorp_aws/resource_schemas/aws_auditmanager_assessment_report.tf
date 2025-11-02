resource "aws_auditmanager_assessment_report" "name" {
  assessment_id = string (Required)
  name = string (Required)
  author = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
