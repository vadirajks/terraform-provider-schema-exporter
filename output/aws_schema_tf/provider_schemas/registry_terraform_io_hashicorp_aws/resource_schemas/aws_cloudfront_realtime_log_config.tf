resource "aws_cloudfront_realtime_log_config" "name" {
  fields = ['set', 'string'] (Required)
  name = string (Required)
  sampling_rate = number (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  endpoint block "list" (Required) {
    stream_type = string (Required)

    kinesis_stream_config block "list" (Required) {
      role_arn = string (Required)
      stream_arn = string (Required)
    }
  }
}
