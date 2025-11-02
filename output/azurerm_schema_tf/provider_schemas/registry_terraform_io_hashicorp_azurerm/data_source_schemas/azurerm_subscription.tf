data "azurerm_subscription" "name" {
  display_name = string (Computed)
  id = string (Optional, Computed)
  location_placement_id = string (Computed)
  quota_id = string (Computed)
  spending_limit = string (Computed)
  state = string (Computed)
  subscription_id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
