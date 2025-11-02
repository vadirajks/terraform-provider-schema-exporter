resource "aws_media_packagev2_channel_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  egress_domain = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
