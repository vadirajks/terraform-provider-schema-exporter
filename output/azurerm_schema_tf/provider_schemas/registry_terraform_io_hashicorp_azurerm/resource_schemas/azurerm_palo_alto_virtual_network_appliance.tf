resource "azurerm_palo_alto_virtual_network_appliance" "name" {
  name = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
