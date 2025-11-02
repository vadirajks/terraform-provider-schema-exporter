data "azurerm_eventgrid_domain_topic" "name" {
  domain_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
