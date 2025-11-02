data "azurerm_resource_group_template_deployment" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  output_content = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
