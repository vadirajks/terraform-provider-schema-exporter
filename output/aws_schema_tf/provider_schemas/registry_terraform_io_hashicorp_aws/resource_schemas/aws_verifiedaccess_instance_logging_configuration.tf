resource "aws_verifiedaccess_instance_logging_configuration" "name" {
  verifiedaccess_instance_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  access_logs block "list" (Required) {
    include_trust_context = bool (Optional, Computed)
    log_version = string (Optional, Computed)

    cloudwatch_logs block "list" (Optional) {
      enabled = bool (Required)
      log_group = string (Optional)
    }

    kinesis_data_firehose block "list" (Optional) {
      enabled = bool (Required)
      delivery_stream = string (Optional)
    }

    s3 block "list" (Optional) {
      enabled = bool (Required)
      bucket_name = string (Optional)
      bucket_owner = string (Optional, Computed)
      prefix = string (Optional)
    }
  }
}
