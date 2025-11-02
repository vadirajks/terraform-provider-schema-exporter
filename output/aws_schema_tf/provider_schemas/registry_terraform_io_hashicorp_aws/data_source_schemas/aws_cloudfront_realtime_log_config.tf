data "aws_cloudfront_realtime_log_config" "name" {
  name = string (Required)
  arn = string (Computed)
  endpoint = ['list', ['object', {'kinesis_stream_config': ['list', ['object', {'role_arn': 'string', 'stream_arn': 'string'}]], 'stream_type': 'string'}]] (Computed)
  fields = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  sampling_rate = number (Computed)
}
