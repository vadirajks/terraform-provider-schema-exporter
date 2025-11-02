resource "azurerm_automation_dsc_configuration" "name" {
  automation_account_name = string (Required)
  content_embedded = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  log_verbose = bool (Optional)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
