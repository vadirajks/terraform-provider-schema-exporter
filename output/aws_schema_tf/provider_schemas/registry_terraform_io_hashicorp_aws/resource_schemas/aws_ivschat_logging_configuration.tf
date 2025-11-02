resource "aws_ivschat_logging_configuration" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  destination_configuration block "list" (Optional) {

    cloudwatch_logs block "list" (Optional) {
      log_group_name = string (Required)
    }

    firehose block "list" (Optional) {
      delivery_stream_name = string (Required)
    }

    s3 block "list" (Optional) {
      bucket_name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
