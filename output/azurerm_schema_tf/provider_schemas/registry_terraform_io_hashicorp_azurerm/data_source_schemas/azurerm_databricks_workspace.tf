data "azurerm_databricks_workspace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  custom_parameters = ['list', ['object', {'machine_learning_workspace_id': 'string', 'nat_gateway_name': 'string', 'no_public_ip': 'bool', 'private_subnet_name': 'string', 'public_ip_name': 'string', 'public_subnet_name': 'string', 'storage_account_name': 'string', 'storage_account_sku_name': 'string', 'virtual_network_id': 'string', 'vnet_address_prefix': 'string'}]] (Computed)
  enhanced_security_compliance = ['list', ['object', {'automatic_cluster_update_enabled': 'bool', 'compliance_security_profile_enabled': 'bool', 'compliance_security_profile_standards': ['set', 'string'], 'enhanced_security_monitoring_enabled': 'bool'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  managed_disk_identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  sku = string (Computed)
  storage_account_identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  workspace_id = string (Computed)
  workspace_url = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
