resource "aws_glue_data_catalog_encryption_settings" "name" {
  catalog_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  data_catalog_encryption_settings block "list" (Required) {

    connection_password_encryption block "list" (Required) {
      return_connection_password_encrypted = bool (Required)
      aws_kms_key_id = string (Optional)
    }

    encryption_at_rest block "list" (Required) {
      catalog_encryption_mode = string (Required)
      catalog_encryption_service_role = string (Optional)
      sse_aws_kms_key_id = string (Optional)
    }
  }
}
