resource "aws_lakeformation_data_lake_settings" "name" {
  admins = ['set', 'string'] (Optional, Computed)
  allow_external_data_filtering = bool (Optional)
  allow_full_table_external_data_access = bool (Optional)
  authorized_session_tag_value_list = ['list', 'string'] (Optional, Computed)
  catalog_id = string (Optional)
  external_data_filtering_allow_list = ['set', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  parameters = ['map', 'string'] (Optional, Computed)
  read_only_admins = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  trusted_resource_owners = ['list', 'string'] (Optional, Computed)

  create_database_default_permissions block "list" (Optional) {
    permissions = ['set', 'string'] (Optional, Computed)
    principal = string (Optional, Computed)
  }

  create_table_default_permissions block "list" (Optional) {
    permissions = ['set', 'string'] (Optional, Computed)
    principal = string (Optional, Computed)
  }
}
