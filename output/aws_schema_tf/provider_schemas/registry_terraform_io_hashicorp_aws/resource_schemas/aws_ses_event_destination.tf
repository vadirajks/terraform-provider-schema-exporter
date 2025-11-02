resource "aws_ses_event_destination" "name" {
  configuration_set_name = string (Required)
  matching_types = ['set', 'string'] (Required)
  name = string (Required)
  arn = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  cloudwatch_destination block "set" (Optional) {
    default_value = string (Required)
    dimension_name = string (Required)
    value_source = string (Required)
  }

  kinesis_destination block "list" (Optional) {
    role_arn = string (Required)
    stream_arn = string (Required)
  }

  sns_destination block "list" (Optional) {
    topic_arn = string (Required)
  }
}
