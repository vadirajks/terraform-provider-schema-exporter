resource "azurerm_application_load_balancer_subnet_association" "name" {
  application_load_balancer_id = string (Required)
  name = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
