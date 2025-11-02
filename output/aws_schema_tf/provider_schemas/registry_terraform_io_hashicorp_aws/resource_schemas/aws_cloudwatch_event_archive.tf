resource "aws_cloudwatch_event_archive" "name" {
  event_source_arn = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  event_pattern = string (Optional)
  id = string (Optional, Computed)
  kms_key_identifier = string (Optional)
  region = string (Optional, Computed)
  retention_days = number (Optional)
}
