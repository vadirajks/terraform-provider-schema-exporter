resource "aws_rds_custom_db_engine_version" "name" {
  engine = string (Required)
  engine_version = string (Required)
  arn = string (Computed)
  create_time = string (Computed)
  database_installation_files_s3_bucket_name = string (Optional)
  database_installation_files_s3_prefix = string (Optional)
  db_parameter_group_family = string (Computed)
  description = string (Optional)
  filename = string (Optional)
  id = string (Optional, Computed)
  image_id = string (Computed)
  kms_key_id = string (Optional, Computed)
  major_engine_version = string (Computed)
  manifest = string (Optional)
  manifest_computed = string (Computed)
  manifest_hash = string (Optional)
  region = string (Optional, Computed)
  source_image_id = string (Optional)
  status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
