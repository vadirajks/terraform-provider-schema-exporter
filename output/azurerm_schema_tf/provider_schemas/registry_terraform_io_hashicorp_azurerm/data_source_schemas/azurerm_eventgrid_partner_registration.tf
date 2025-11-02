data "azurerm_eventgrid_partner_registration" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  partner_registration_id = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
