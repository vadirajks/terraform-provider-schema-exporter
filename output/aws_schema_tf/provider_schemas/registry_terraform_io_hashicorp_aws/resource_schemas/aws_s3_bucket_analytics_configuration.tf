resource "aws_s3_bucket_analytics_configuration" "name" {
  bucket = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  filter block "list" (Optional) {
    prefix = string (Optional)
    tags = ['map', 'string'] (Optional)
  }

  storage_class_analysis block "list" (Optional) {

    data_export block "list" (Required) {
      output_schema_version = string (Optional)

      destination block "list" (Required) {

        s3_bucket_destination block "list" (Required) {
          bucket_arn = string (Required)
          bucket_account_id = string (Optional)
          format = string (Optional)
          prefix = string (Optional)
        }
      }
    }
  }
}
