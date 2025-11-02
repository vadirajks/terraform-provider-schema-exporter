resource "azurerm_api_management_subscription" "name" {
  api_management_name = string (Required)
  display_name = string (Required)
  resource_group_name = string (Required)
  allow_tracing = bool (Optional)
  api_id = string (Optional)
  id = string (Optional, Computed)
  primary_key = string (Optional, Computed)
  product_id = string (Optional)
  secondary_key = string (Optional, Computed)
  state = string (Optional)
  subscription_id = string (Optional, Computed)
  user_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
