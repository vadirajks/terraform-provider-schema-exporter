resource "aws_media_package_channel" "name" {
  channel_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  hls_ingest = ['list', ['object', {'ingest_endpoints': ['list', ['object', {'password': 'string', 'url': 'string', 'username': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
