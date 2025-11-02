resource "azurerm_subnet_nat_gateway_association" "name" {
  nat_gateway_id = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
