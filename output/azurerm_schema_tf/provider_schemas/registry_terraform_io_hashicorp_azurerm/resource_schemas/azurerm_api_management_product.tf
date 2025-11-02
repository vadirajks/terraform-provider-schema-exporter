resource "azurerm_api_management_product" "name" {
  api_management_name = string (Required)
  display_name = string (Required)
  product_id = string (Required)
  published = bool (Required)
  resource_group_name = string (Required)
  approval_required = bool (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  subscription_required = bool (Optional)
  subscriptions_limit = number (Optional)
  terms = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
