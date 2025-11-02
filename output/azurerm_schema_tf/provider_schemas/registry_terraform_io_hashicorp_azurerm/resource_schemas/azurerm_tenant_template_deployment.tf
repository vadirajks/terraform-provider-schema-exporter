resource "azurerm_tenant_template_deployment" "name" {
  location = string (Required)
  name = string (Required)
  debug_level = string (Optional)
  id = string (Optional, Computed)
  output_content = string (Computed)
  parameters_content = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  template_content = string (Optional, Computed)
  template_spec_version_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
