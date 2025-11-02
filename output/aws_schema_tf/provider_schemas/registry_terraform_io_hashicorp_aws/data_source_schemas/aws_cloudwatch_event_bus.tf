data "aws_cloudwatch_event_bus" "name" {
  name = string (Required)
  arn = string (Computed)
  dead_letter_config = ['list', ['object', {'arn': 'string'}]] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  kms_key_identifier = string (Computed)
  log_config = ['list', ['object', {'include_detail': 'string', 'level': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
