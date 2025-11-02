data "aws_backup_report_plan" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  deployment_status = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  report_delivery_channel = ['list', ['object', {'formats': ['set', 'string'], 's3_bucket_name': 'string', 's3_key_prefix': 'string'}]] (Computed)
  report_setting = ['list', ['object', {'accounts': ['set', 'string'], 'framework_arns': ['set', 'string'], 'number_of_frameworks': 'number', 'organization_units': ['set', 'string'], 'regions': ['set', 'string'], 'report_template': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
