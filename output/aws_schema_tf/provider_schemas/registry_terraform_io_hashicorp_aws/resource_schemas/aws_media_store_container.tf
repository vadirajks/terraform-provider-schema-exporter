resource "aws_media_store_container" "name" {
  name = string (Required)
  arn = string (Computed)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
