resource "azurerm_private_link_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  alias = string (Computed)
  auto_approval_subscription_ids = ['set', 'string'] (Optional)
  destination_ip_address = string (Optional)
  enable_proxy_protocol = bool (Optional)
  fqdns = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  load_balancer_frontend_ip_configuration_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  visibility_subscription_ids = ['set', 'string'] (Optional)

  nat_ip_configuration block "list" (Required) {
    name = string (Required)
    primary = bool (Required)
    subnet_id = string (Required)
    private_ip_address = string (Optional)
    private_ip_address_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
