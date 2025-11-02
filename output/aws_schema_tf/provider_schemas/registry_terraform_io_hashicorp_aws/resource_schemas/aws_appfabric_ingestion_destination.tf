resource "aws_appfabric_ingestion_destination" "name" {
  app_bundle_arn = string (Required)
  ingestion_arn = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  destination_configuration block "list" (Optional) {

    audit_log block "list" (Optional) {

      destination block "list" (Optional) {

        firehose_stream block "list" (Optional) {
          stream_name = string (Required)
        }

        s3_bucket block "list" (Optional) {
          bucket_name = string (Required)
          prefix = string (Optional)
        }
      }
    }
  }

  processing_configuration block "list" (Optional) {

    audit_log block "list" (Optional) {
      format = string (Required)
      schema = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
