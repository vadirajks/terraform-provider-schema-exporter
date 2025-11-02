resource "azurerm_management_group_subscription_association" "name" {
  management_group_id = string (Required)
  subscription_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
