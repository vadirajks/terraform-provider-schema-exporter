data "azurerm_private_link_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  alias = string (Computed)
  auto_approval_subscription_ids = ['list', 'string'] (Computed)
  enable_proxy_protocol = bool (Computed)
  id = string (Optional, Computed)
  load_balancer_frontend_ip_configuration_ids = ['list', 'string'] (Computed)
  location = string (Computed)
  nat_ip_configuration = ['list', ['object', {'name': 'string', 'primary': 'bool', 'private_ip_address': 'string', 'private_ip_address_version': 'string', 'subnet_id': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  visibility_subscription_ids = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
