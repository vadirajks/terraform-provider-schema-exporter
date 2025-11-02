resource "azurerm_virtual_hub_ip" "name" {
  name = string (Required)
  public_ip_address_id = string (Required)
  subnet_id = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)
  private_ip_address = string (Optional)
  private_ip_allocation_method = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
