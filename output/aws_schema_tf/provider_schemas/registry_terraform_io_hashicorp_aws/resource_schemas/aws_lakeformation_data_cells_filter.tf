resource "aws_lakeformation_data_cells_filter" "name" {
  id = string (Computed)
  region = string (Optional, Computed)

  table_data block "list" (Optional) {
    database_name = string (Required)
    name = string (Required)
    table_catalog_id = string (Required)
    table_name = string (Required)
    column_names = ['set', 'string'] (Optional, Computed)
    version_id = string (Optional, Computed)

    column_wildcard block "list" (Optional) {
      excluded_column_names = ['list', 'string'] (Optional)
    }

    row_filter block "list" (Optional) {
      filter_expression = string (Optional, Computed)

      all_rows_wildcard block "list" (Optional) {
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
