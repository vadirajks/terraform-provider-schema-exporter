resource "azurerm_batch_application" "name" {
  account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  allow_updates = bool (Optional)
  default_version = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
