resource "aws_timestreamwrite_table" "name" {
  database_name = string (Required)
  table_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  magnetic_store_write_properties block "list" (Optional) {
    enable_magnetic_store_writes = bool (Optional)

    magnetic_store_rejected_data_location block "list" (Optional) {

      s3_configuration block "list" (Optional) {
        bucket_name = string (Optional)
        encryption_option = string (Optional)
        kms_key_id = string (Optional)
        object_key_prefix = string (Optional)
      }
    }
  }

  retention_properties block "list" (Optional) {
    magnetic_store_retention_period_in_days = number (Required)
    memory_store_retention_period_in_hours = number (Required)
  }

  schema block "list" (Optional) {

    composite_partition_key block "list" (Optional) {
      type = string (Required)
      enforcement_in_record = string (Optional)
      name = string (Optional)
    }
  }
}
