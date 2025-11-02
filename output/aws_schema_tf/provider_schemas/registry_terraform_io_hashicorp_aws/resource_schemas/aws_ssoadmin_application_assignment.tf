resource "aws_ssoadmin_application_assignment" "name" {
  application_arn = string (Required)
  principal_id = string (Required)
  principal_type = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
}
