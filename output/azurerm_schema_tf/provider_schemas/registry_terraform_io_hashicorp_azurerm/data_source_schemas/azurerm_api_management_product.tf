data "azurerm_api_management_product" "name" {
  api_management_name = string (Required)
  product_id = string (Required)
  resource_group_name = string (Required)
  approval_required = bool (Computed)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  published = bool (Computed)
  subscription_required = bool (Computed)
  subscriptions_limit = number (Computed)
  terms = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
