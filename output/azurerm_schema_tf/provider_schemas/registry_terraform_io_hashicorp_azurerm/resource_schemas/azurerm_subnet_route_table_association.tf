resource "azurerm_subnet_route_table_association" "name" {
  route_table_id = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
