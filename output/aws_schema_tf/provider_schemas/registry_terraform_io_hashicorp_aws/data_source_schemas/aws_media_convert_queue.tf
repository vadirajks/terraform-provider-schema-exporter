data "aws_media_convert_queue" "name" {
  id = string (Required)
  arn = string (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
