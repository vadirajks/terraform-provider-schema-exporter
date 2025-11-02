data "aws_guardduty_detector" "name" {
  arn = string (Computed)
  features = ['list', ['object', {'additional_configuration': ['list', ['object', {'name': 'string', 'status': 'string'}]], 'name': 'string', 'status': 'string'}]] (Computed)
  finding_publishing_frequency = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_role_arn = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
