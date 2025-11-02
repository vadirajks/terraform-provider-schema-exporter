data "aws_oam_sink" "name" {
  sink_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  sink_id = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
