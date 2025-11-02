resource "azurerm_application_insights_workbook_template" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  template_data = string (Required)
  author = string (Optional)
  id = string (Optional, Computed)
  localized = string (Optional)
  priority = number (Optional)
  tags = ['map', 'string'] (Optional)

  galleries block "list" (Required) {
    category = string (Required)
    name = string (Required)
    order = number (Optional)
    resource_type = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
