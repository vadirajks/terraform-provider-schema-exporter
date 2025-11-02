resource "aws_lightsail_certificate" "name" {
  name = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  domain_name = string (Optional, Computed)
  domain_validation_options = ['set', ['object', {'domain_name': 'string', 'resource_record_name': 'string', 'resource_record_type': 'string', 'resource_record_value': 'string'}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subject_alternative_names = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
