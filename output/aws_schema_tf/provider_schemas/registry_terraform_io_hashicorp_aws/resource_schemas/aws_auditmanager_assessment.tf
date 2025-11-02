resource "aws_auditmanager_assessment" "name" {
  framework_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  roles_all = ['list', ['object', {'role_arn': 'string', 'role_type': 'string'}]] (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  assessment_reports_destination block "list" (Optional) {
    destination = string (Required)
    destination_type = string (Required)
  }

  roles block "set" (Optional) {
    role_arn = string (Required)
    role_type = string (Required)
  }

  scope block "list" (Optional) {

    aws_accounts block "set" (Optional) {
      id = string (Required)
    }

    aws_services block "set" (Optional) {
      service_name = string (Required)
    }
  }
}
