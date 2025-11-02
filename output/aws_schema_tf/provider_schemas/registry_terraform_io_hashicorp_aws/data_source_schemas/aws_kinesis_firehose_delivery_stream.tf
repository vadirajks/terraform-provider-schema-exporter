data "aws_kinesis_firehose_delivery_stream" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
