resource "aws_ssm_resource_data_sync" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  s3_destination block "list" (Required) {
    bucket_name = string (Required)
    region = string (Required)
    kms_key_arn = string (Optional)
    prefix = string (Optional)
    sync_format = string (Optional)
  }
}
