data "azurerm_tenant_template_deployment" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  output_content = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
