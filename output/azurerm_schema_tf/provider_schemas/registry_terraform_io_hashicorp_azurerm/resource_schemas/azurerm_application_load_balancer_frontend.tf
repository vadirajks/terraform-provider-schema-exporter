resource "azurerm_application_load_balancer_frontend" "name" {
  application_load_balancer_id = string (Required)
  name = string (Required)
  fully_qualified_domain_name = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
