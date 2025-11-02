resource "azurerm_template_deployment" "name" {
  deployment_mode = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  outputs = ['map', 'string'] (Computed)
  parameters = ['map', 'string'] (Optional)
  parameters_body = string (Optional)
  template_body = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
