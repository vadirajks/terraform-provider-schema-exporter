data "aws_securityhub_standards_control_associations" "name" {
  security_control_id = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  standards_control_associations = ['list', ['object', {'association_status': 'string', 'related_requirements': ['list', 'string'], 'security_control_arn': 'string', 'security_control_id': 'string', 'standards_arn': 'string', 'standards_control_description': 'string', 'standards_control_title': 'string', 'updated_at': 'string', 'updated_reason': 'string'}]] (Computed)
}
