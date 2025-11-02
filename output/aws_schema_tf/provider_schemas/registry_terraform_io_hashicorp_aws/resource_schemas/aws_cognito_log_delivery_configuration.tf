resource "aws_cognito_log_delivery_configuration" "name" {
  user_pool_id = string (Required)
  region = string (Optional, Computed)

  log_configurations block "list" (Optional) {
    event_source = string (Required)
    log_level = string (Required)

    cloud_watch_logs_configuration block "list" (Optional) {
      log_group_arn = string (Optional)
    }

    firehose_configuration block "list" (Optional) {
      stream_arn = string (Optional)
    }

    s3_configuration block "list" (Optional) {
      bucket_arn = string (Optional)
    }
  }
}
