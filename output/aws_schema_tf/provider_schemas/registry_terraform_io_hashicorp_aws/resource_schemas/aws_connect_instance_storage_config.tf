resource "aws_connect_instance_storage_config" "name" {
  instance_id = string (Required)
  resource_type = string (Required)
  association_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  storage_config block "list" (Required) {
    storage_type = string (Required)

    kinesis_firehose_config block "list" (Optional) {
      firehose_arn = string (Required)
    }

    kinesis_stream_config block "list" (Optional) {
      stream_arn = string (Required)
    }

    kinesis_video_stream_config block "list" (Optional) {
      prefix = string (Required)
      retention_period_hours = number (Required)

      encryption_config block "list" (Required) {
        encryption_type = string (Required)
        key_id = string (Required)
      }
    }

    s3_config block "list" (Optional) {
      bucket_name = string (Required)
      bucket_prefix = string (Required)

      encryption_config block "list" (Optional) {
        encryption_type = string (Required)
        key_id = string (Required)
      }
    }
  }
}
