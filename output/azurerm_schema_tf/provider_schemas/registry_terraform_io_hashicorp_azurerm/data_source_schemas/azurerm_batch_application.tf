data "azurerm_batch_application" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allow_updates = bool (Computed)
  default_version = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
