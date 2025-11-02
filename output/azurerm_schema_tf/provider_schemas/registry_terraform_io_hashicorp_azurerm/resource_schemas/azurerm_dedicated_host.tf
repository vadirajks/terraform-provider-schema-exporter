resource "azurerm_dedicated_host" "name" {
  dedicated_host_group_id = string (Required)
  location = string (Required)
  name = string (Required)
  platform_fault_domain = number (Required)
  sku_name = string (Required)
  auto_replace_on_failure = bool (Optional)
  id = string (Optional, Computed)
  license_type = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
