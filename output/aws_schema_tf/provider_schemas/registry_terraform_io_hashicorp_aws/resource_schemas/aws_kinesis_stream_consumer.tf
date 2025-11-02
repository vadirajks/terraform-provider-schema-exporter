resource "aws_kinesis_stream_consumer" "name" {
  name = string (Required)
  stream_arn = string (Required)
  arn = string (Computed)
  creation_timestamp = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
