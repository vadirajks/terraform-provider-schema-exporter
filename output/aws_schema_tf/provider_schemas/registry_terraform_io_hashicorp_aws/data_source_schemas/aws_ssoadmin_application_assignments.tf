data "aws_ssoadmin_application_assignments" "name" {
  application_arn = string (Required)
  application_assignments = ['list', ['object', {'application_arn': 'string', 'principal_id': 'string', 'principal_type': 'string'}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
