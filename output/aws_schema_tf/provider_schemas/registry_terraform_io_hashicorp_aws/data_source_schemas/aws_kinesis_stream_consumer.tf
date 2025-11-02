data "aws_kinesis_stream_consumer" "name" {
  stream_arn = string (Required)
  arn = string (Optional, Computed)
  creation_timestamp = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
