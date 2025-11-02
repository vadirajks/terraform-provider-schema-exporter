data "aws_glue_data_catalog_encryption_settings" "name" {
  catalog_id = string (Required)
  data_catalog_encryption_settings = ['list', ['object', {'connection_password_encryption': ['list', ['object', {'aws_kms_key_id': 'string', 'return_connection_password_encrypted': 'bool'}]], 'encryption_at_rest': ['list', ['object', {'catalog_encryption_mode': 'string', 'catalog_encryption_service_role': 'string', 'sse_aws_kms_key_id': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
