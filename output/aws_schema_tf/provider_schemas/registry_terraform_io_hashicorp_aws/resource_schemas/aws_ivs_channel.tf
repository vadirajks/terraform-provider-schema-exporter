resource "aws_ivs_channel" "name" {
  arn = string (Computed)
  authorized = bool (Optional, Computed)
  id = string (Optional, Computed)
  ingest_endpoint = string (Computed)
  latency_mode = string (Optional, Computed)
  name = string (Optional, Computed)
  playback_url = string (Computed)
  recording_configuration_arn = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
