resource "aws_chime_voice_connector_streaming" "name" {
  data_retention = number (Required)
  voice_connector_id = string (Required)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  streaming_notification_targets = ['set', 'string'] (Optional)

  media_insights_configuration block "list" (Optional) {
    configuration_arn = string (Optional)
    disabled = bool (Optional)
  }
}
