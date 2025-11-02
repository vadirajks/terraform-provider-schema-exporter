resource "azurerm_storage_account_network_rules" "name" {
  default_action = string (Required)
  storage_account_id = string (Required)
  bypass = ['set', 'string'] (Optional, Computed)
  id = string (Optional, Computed)
  ip_rules = ['set', 'string'] (Optional)
  virtual_network_subnet_ids = ['set', 'string'] (Optional)

  private_link_access block "list" (Optional) {
    endpoint_resource_id = string (Required)
    endpoint_tenant_id = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
