resource "aws_lakeformation_opt_in" "name" {
  last_modified = string (Computed)
  last_updated_by = string (Computed)
  region = string (Optional, Computed)

  condition block "list" (Optional) {
    expression = string (Computed)
  }

  principal block "list" (Optional) {
    data_lake_principal_identifier = string (Required)
  }

  resource_data block "list" (Optional) {

    catalog block "list" (Optional) {
      id = string (Optional)
    }

    data_cells_filter block "list" (Optional) {
      database_name = string (Optional)
      name = string (Optional)
      table_catalog_id = string (Optional)
      table_name = string (Optional)
    }

    data_location block "list" (Optional) {
      resource_arn = string (Required)
      catalog_id = string (Optional, Computed)
    }

    database block "list" (Optional) {
      name = string (Required)
      catalog_id = string (Optional)
    }

    lf_tag block "list" (Optional) {
      key = string (Required)
      value = string (Required)
      catalog_id = string (Optional, Computed)
    }

    lf_tag_expression block "list" (Optional) {
      name = string (Required)
      catalog_id = string (Optional)
    }

    lf_tag_policy block "list" (Optional) {
      resource_type = string (Required)
      catalog_id = string (Optional, Computed)
      expression = ['list', 'string'] (Optional)
      expression_name = string (Optional)
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
  }
}
