resource "aws_ssoadmin_application_assignment_configuration" "name" {
  application_arn = string (Required)
  assignment_required = bool (Required)
  id = string (Computed)
  region = string (Optional, Computed)
}
