resource "azurerm_virtual_network_dns_servers" "name" {
  virtual_network_id = string (Required)
  dns_servers = ['list', 'string'] (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
