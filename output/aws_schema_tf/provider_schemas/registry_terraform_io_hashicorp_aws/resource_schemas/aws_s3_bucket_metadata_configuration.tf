resource "aws_s3_bucket_metadata_configuration" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional)
  region = string (Optional, Computed)

  metadata_configuration block "list" (Optional) {
    destination = ['list', ['object', {'table_bucket_arn': 'string', 'table_bucket_type': 'string', 'table_namespace': 'string'}]] (Computed)

    inventory_table_configuration block "list" (Optional) {
      configuration_state = string (Required)
      table_arn = string (Computed)
      table_name = string (Computed)

      encryption_configuration block "list" (Optional) {
        sse_algorithm = string (Required)
        kms_key_arn = string (Optional)
      }
    }

    journal_table_configuration block "list" (Optional) {
      table_arn = string (Computed)
      table_name = string (Computed)

      encryption_configuration block "list" (Optional) {
        sse_algorithm = string (Required)
        kms_key_arn = string (Optional)
      }

      record_expiration block "list" (Optional) {
        expiration = string (Required)
        days = number (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
