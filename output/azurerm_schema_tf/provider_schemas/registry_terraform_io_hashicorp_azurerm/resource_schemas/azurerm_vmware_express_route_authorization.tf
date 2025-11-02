resource "azurerm_vmware_express_route_authorization" "name" {
  name = string (Required)
  private_cloud_id = string (Required)
  express_route_authorization_id = string (Computed)
  express_route_authorization_key = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
