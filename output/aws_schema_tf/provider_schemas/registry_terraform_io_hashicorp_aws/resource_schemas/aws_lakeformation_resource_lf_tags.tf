resource "aws_lakeformation_resource_lf_tags" "name" {
  catalog_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  database block "list" (Optional) {
    name = string (Required)
    catalog_id = string (Optional, Computed)
  }

  lf_tag block "set" (Required) {
    key = string (Required)
    value = string (Required)
    catalog_id = string (Optional, Computed)
  }

  table block "list" (Optional) {
    database_name = string (Required)
    catalog_id = string (Optional, Computed)
    name = string (Optional, Computed)
    wildcard = bool (Optional)
  }

  table_with_columns block "list" (Optional) {
    database_name = string (Required)
    name = string (Required)
    catalog_id = string (Optional, Computed)
    column_names = ['set', 'string'] (Optional)
    excluded_column_names = ['set', 'string'] (Optional)
    wildcard = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
