resource "azurerm_api_management_policy_fragment" "name" {
  api_management_id = string (Required)
  name = string (Required)
  value = string (Required)
  description = string (Optional)
  format = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
