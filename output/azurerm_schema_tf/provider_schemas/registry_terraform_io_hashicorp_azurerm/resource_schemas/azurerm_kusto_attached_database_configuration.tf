resource "azurerm_kusto_attached_database_configuration" "name" {
  cluster_name = string (Required)
  database_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  attached_database_names = ['list', 'string'] (Computed)
  cluster_id = string (Optional, Computed)
  cluster_resource_id = string (Optional, Computed)
  default_principal_modification_kind = string (Optional)
  id = string (Optional, Computed)

  sharing block "list" (Optional) {
    external_tables_to_exclude = ['set', 'string'] (Optional)
    external_tables_to_include = ['set', 'string'] (Optional)
    materialized_views_to_exclude = ['set', 'string'] (Optional)
    materialized_views_to_include = ['set', 'string'] (Optional)
    tables_to_exclude = ['set', 'string'] (Optional)
    tables_to_include = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
