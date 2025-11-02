resource "azurerm_api_management_email_template" "name" {
  api_management_name = string (Required)
  body = string (Required)
  resource_group_name = string (Required)
  subject = string (Required)
  template_name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  title = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
