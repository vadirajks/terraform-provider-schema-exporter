data "azurerm_management_group_template_deployment" "name" {
  management_group_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  output_content = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
