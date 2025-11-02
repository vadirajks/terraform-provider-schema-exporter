resource "azurerm_api_management_product_group" "name" {
  api_management_name = string (Required)
  group_name = string (Required)
  product_id = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
