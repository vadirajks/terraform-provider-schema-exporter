resource "aws_glue_catalog_table_optimizer" "name" {
  catalog_id = string (Required)
  database_name = string (Required)
  table_name = string (Required)
  type = string (Required)
  region = string (Optional, Computed)

  configuration block "list" (Optional) {
    enabled = bool (Required)
    role_arn = string (Required)

    orphan_file_deletion_configuration block "list" (Optional) {

      iceberg_configuration block "list" (Optional) {
        location = string (Optional)
        orphan_file_retention_period_in_days = number (Optional)
        run_rate_in_hours = number (Optional, Computed)
      }
    }

    retention_configuration block "list" (Optional) {

      iceberg_configuration block "list" (Optional) {
        clean_expired_files = bool (Optional)
        number_of_snapshots_to_retain = number (Optional)
        run_rate_in_hours = number (Optional, Computed)
        snapshot_retention_period_in_days = number (Optional)
      }
    }
  }
}
