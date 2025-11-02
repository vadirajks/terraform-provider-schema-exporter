data "aws_elastic_beanstalk_application" "name" {
  name = string (Required)
  appversion_lifecycle = ['list', ['object', {'delete_source_from_s3': 'bool', 'max_age_in_days': 'number', 'max_count': 'number', 'service_role': 'string'}]] (Computed)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
