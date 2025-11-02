resource "azurerm_app_service_environment" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  subnet_id = string (Required)
  allowed_user_ip_cidrs = ['set', 'string'] (Optional)
  front_end_scale_factor = number (Optional)
  id = string (Optional, Computed)
  internal_ip_address = string (Computed)
  internal_load_balancing_mode = string (Optional)
  location = string (Computed)
  outbound_ip_addresses = ['list', 'string'] (Computed)
  pricing_tier = string (Optional)
  service_ip_address = string (Computed)
  tags = ['map', 'string'] (Optional)

  cluster_setting block "list"  (Optional){
    name = string (Required)
    value = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
