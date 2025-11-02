resource "azurerm_integration_service_environment" "name" {
  access_endpoint_type = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  virtual_network_subnet_ids = ['set', 'string'] (Required)
  connector_endpoint_ip_addresses = ['list', 'string'] (Computed)
  connector_outbound_ip_addresses = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  sku_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  workflow_endpoint_ip_addresses = ['list', 'string'] (Computed)
  workflow_outbound_ip_addresses = ['list', 'string'] (Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
