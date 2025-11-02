data "aws_verifiedpermissions_policy_store" "name" {
  id = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  deletion_protection = string (Computed)
  description = string (Computed)
  last_updated_date = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
  validation_settings = ['list', ['object', {'mode': 'string'}]] (Computed)
}
