resource "azurerm_express_route_port_authorization" "name" {
  express_route_port_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  authorization_key = string (Computed)
  authorization_use_status = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
