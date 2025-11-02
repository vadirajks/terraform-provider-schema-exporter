resource "azurerm_automation_python3_package" "name" {
  automation_account_name = string (Required)
  content_uri = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  content_version = string (Optional)
  hash_algorithm = string (Optional)
  hash_value = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
