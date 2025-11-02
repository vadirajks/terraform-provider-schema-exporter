data "aws_lakeformation_permissions" "name" {
  principal = string (Required)
  catalog_id = string (Optional)
  catalog_resource = bool (Optional)
  id = string (Optional, Computed)
  permissions = ['list', 'string'] (Computed)
  permissions_with_grant_option = ['list', 'string'] (Computed)
  region = string (Optional, Computed)

  data_cells_filter block "list" (Optional) {
    database_name = string (Required)
    name = string (Required)
    table_catalog_id = string (Required)
    table_name = string (Required)
  }

  data_location block "list" (Optional) {
    arn = string (Required)
    catalog_id = string (Optional, Computed)
  }

  database block "list" (Optional) {
    name = string (Required)
    catalog_id = string (Optional, Computed)
  }

  lf_tag block "list" (Optional) {
    key = string (Required)
    values = ['set', 'string'] (Required)
    catalog_id = string (Optional, Computed)
  }

  lf_tag_policy block "list" (Optional) {
    resource_type = string (Required)
    catalog_id = string (Optional, Computed)

    expression block "set" (Required) {
      key = string (Required)
      values = ['set', 'string'] (Required)
    }
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
}
