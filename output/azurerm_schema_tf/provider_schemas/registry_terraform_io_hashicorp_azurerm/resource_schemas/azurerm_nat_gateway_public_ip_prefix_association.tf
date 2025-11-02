resource "azurerm_nat_gateway_public_ip_prefix_association" "name" {
  nat_gateway_id = string (Required)
  public_ip_prefix_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
