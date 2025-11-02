resource "aws_cloudwatch_event_bus" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  event_source_name = string (Optional)
  id = string (Optional, Computed)
  kms_key_identifier = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  dead_letter_config block "list" (Optional) {
    arn = string (Optional)
  }

  log_config block "list" (Optional) {
    include_detail = string (Optional)
    level = string (Optional)
  }
}
