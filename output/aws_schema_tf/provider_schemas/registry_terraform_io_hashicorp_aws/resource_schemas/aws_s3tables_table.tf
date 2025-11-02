resource "aws_s3tables_table" "name" {
  format = string (Required)
  name = string (Required)
  namespace = string (Required)
  table_bucket_arn = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  created_by = string (Computed)
  encryption_configuration = ['object', {'kms_key_arn': 'string', 'sse_algorithm': 'string'}] (Optional, Computed)
  maintenance_configuration = ['object', {'iceberg_compaction': ['object', {'settings': ['object', {'target_file_size_mb': 'number'}], 'status': 'string'}], 'iceberg_snapshot_management': ['object', {'settings': ['object', {'max_snapshot_age_hours': 'number', 'min_snapshots_to_keep': 'number'}], 'status': 'string'}]}] (Optional, Computed)
  metadata_location = string (Computed)
  modified_at = string (Computed)
  modified_by = string (Computed)
  owner_account_id = string (Computed)
  region = string (Optional, Computed)
  type = string (Computed)
  version_token = string (Computed)
  warehouse_location = string (Computed)

  metadata block "list" (Optional) {

    iceberg block "list" (Optional) {

      schema block "list" (Optional) {

        field block "list" (Optional) {
          name = string (Required)
          type = string (Required)
          required = bool (Optional, Computed)
        }
      }
    }
  }
}
