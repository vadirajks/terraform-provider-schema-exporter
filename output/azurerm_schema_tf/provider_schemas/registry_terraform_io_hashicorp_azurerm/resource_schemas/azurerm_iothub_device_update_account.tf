resource "azurerm_iothub_device_update_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  host_name = string (Computed)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
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
