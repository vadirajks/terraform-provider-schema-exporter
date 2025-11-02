resource "aws_glue_partition_index" "name" {
  database_name = string (Required)
  table_name = string (Required)
  catalog_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  partition_index block "list" (Required) {
    index_name = string (Optional)
    index_status = string (Computed)
    keys = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
