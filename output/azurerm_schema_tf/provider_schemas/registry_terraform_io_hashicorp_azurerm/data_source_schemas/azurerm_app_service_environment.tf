data "azurerm_app_service_environment" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  cluster_setting = ['list', ['object', {'name': 'string', 'value': 'string'}]] (Computed)
  front_end_scale_factor = number (Computed)
  id = string (Optional, Computed)
  internal_ip_address = string (Computed)
  location = string (Computed)
  outbound_ip_addresses = ['list', 'string'] (Computed)
  pricing_tier = string (Computed)
  service_ip_address = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single"  (Optional){
    read = string (Optional)
  }
}
