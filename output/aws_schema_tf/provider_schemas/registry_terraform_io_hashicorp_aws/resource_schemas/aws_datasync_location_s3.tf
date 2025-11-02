resource "aws_datasync_location_s3" "name" {
  s3_bucket_arn = string (Required)
  subdirectory = string (Required)
  agent_arns = ['set', 'string'] (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  s3_storage_class = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  s3_config block "list" (Required) {
    bucket_access_role_arn = string (Required)
  }
}
