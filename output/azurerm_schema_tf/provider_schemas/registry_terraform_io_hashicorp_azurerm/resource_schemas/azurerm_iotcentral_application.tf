resource "azurerm_iotcentral_application" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sub_domain = string (Required)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)
  template = string (Optional)

  identity block "list" (Optional) {
    type = string (Required)
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
