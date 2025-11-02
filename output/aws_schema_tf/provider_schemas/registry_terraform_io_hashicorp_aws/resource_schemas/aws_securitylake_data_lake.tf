resource "aws_securitylake_data_lake" "name" {
  meta_store_manager_role_arn = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  s3_bucket_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  configuration block "list" (Optional) {
    region = string (Required)
    encryption_configuration = ['list', ['object', {'kms_key_id': 'string'}]] (Optional, Computed)

    lifecycle_configuration block "list" (Optional) {

      expiration block "list" (Optional) {
        days = number (Optional)
      }

      transition block "set" (Optional) {
        days = number (Optional)
        storage_class = string (Optional)
      }
    }

    replication_configuration block "list" (Optional) {
      regions = ['set', 'string'] (Optional)
      role_arn = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
