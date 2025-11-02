data "aws_ivs_stream_key" "name" {
  channel_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  value = string (Computed)
}
