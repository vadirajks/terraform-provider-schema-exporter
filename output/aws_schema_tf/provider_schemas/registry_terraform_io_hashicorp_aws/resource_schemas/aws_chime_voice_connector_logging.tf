resource "aws_chime_voice_connector_logging" "name" {
  voice_connector_id = string (Required)
  enable_media_metric_logs = bool (Optional)
  enable_sip_logs = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
