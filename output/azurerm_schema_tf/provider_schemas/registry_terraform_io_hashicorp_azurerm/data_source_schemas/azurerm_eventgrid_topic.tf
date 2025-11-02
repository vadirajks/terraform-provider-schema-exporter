data "azurerm_eventgrid_topic" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  primary_access_key = string (Computed)
  secondary_access_key = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
