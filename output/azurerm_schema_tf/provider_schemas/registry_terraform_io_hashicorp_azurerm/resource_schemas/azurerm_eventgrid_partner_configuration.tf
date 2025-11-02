resource "azurerm_eventgrid_partner_configuration" "name" {
  resource_group_name = string (Required)
  default_maximum_expiration_time_in_days = number (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  partner_authorization block "list" (Optional) {
    partner_name = string (Required)
    partner_registration_id = string (Required)
    authorization_expiration_time_in_utc = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
