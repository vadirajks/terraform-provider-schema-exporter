resource "aws_lakeformation_resource_lf_tag" "name" {
  catalog_id = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)

  database block "list" (Optional) {
    name = string (Required)
    catalog_id = string (Optional)
  }

  lf_tag block "list" (Optional) {
    key = string (Required)
    value = string (Required)
    catalog_id = string (Optional, Computed)
  }

  table block "list" (Optional) {
    database_name = string (Required)
    catalog_id = string (Optional)
    name = string (Optional)
    wildcard = bool (Optional)
  }

  table_with_columns block "list" (Optional) {
    database_name = string (Required)
    name = string (Required)
    catalog_id = string (Optional)
    column_names = ['set', 'string'] (Optional)

    column_wildcard block "list" (Optional) {
      excluded_column_names = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
