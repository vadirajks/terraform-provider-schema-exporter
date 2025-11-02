resource "aws_glue_catalog_database" "name" {
  name = string (Required)
  arn = string (Computed)
  catalog_id = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  location_uri = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  create_table_default_permission block "list" (Optional) {
    permissions = ['set', 'string'] (Optional)

    principal block "list" (Optional) {
      data_lake_principal_identifier = string (Optional)
    }
  }

  federated_database block "list" (Optional) {
    connection_name = string (Optional)
    identifier = string (Optional)
  }

  target_database block "list" (Optional) {
    catalog_id = string (Required)
    database_name = string (Required)
    region = string (Optional)
  }
}
