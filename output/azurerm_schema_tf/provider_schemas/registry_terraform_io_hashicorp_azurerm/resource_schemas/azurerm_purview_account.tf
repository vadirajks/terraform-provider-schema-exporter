resource "azurerm_purview_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  atlas_kafka_endpoint_primary_connection_string = string (Computed)
  atlas_kafka_endpoint_secondary_connection_string = string (Computed)
  aws_external_id = string (Computed)
  catalog_endpoint = string (Computed)
  guardian_endpoint = string (Computed)
  id = string (Optional, Computed)
  managed_event_hub_enabled = bool (Optional)
  managed_resource_group_name = string (Optional, Computed)
  managed_resources = ['list', ['object', {'event_hub_namespace_id': 'string', 'resource_group_id': 'string', 'storage_account_id': 'string'}]] (Computed)
  public_network_enabled = bool (Optional)
  scan_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Required) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
