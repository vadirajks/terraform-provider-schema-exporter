resource "aws_chime_voice_connector" "name" {
  name = string (Required)
  require_encryption = bool (Required)
  arn = string (Computed)
  aws_region = string (Optional, Computed)
  id = string (Optional, Computed)
  outbound_host_name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
