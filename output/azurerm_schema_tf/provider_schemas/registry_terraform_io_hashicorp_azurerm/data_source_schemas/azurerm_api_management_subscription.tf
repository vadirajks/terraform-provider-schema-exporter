data "azurerm_api_management_subscription" "name" {
  api_management_id = string (Required)
  subscription_id = string (Required)
  allow_tracing = bool (Computed)
  api_id = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  primary_key = string (Computed)
  product_id = string (Computed)
  secondary_key = string (Computed)
  state = string (Computed)
  user_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
