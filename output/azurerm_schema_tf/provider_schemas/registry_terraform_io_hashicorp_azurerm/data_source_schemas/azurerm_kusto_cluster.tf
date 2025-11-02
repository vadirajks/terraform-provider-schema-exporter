data "azurerm_kusto_cluster" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  data_ingestion_uri = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  uri = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
