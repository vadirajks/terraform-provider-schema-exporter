resource "azurerm_automation_certificate" "name" {
  automation_account_name = string (Required)
  base64 = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  exportable = bool (Optional)
  id = string (Optional, Computed)
  thumbprint = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
