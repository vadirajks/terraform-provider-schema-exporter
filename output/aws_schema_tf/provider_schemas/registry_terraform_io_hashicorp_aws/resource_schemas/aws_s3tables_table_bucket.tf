resource "aws_s3tables_table_bucket" "name" {
  name = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  encryption_configuration = ['object', {'kms_key_arn': 'string', 'sse_algorithm': 'string'}] (Optional)
  force_destroy = bool (Optional, Computed)
  maintenance_configuration = ['object', {'iceberg_unreferenced_file_removal': ['object', {'settings': ['object', {'non_current_days': 'number', 'unreferenced_days': 'number'}], 'status': 'string'}]}] (Optional, Computed)
  owner_account_id = string (Computed)
  region = string (Optional, Computed)
}
