data "azurerm_template_spec_version" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  version = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
  template_body = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
