resource "aws_dynamodb_kinesis_streaming_destination" "name" {
  stream_arn = string (Required)
  table_name = string (Required)
  approximate_creation_date_time_precision = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
