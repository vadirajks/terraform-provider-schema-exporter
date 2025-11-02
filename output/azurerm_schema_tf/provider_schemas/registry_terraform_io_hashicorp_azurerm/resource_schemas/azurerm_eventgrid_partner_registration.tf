resource "azurerm_eventgrid_partner_registration" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  partner_registration_id = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
