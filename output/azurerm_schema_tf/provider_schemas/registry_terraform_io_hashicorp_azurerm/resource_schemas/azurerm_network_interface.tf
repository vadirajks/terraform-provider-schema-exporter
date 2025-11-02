resource "azurerm_network_interface" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  accelerated_networking_enabled = bool (Optional)
  applied_dns_servers = ['list', 'string'] (Computed)
  auxiliary_mode = string (Optional)
  auxiliary_sku = string (Optional)
  dns_servers = ['list', 'string'] (Optional)
  edge_zone = string (Optional)
  id = string (Optional, Computed)
  internal_dns_name_label = string (Optional)
  internal_domain_name_suffix = string (Computed)
  ip_forwarding_enabled = bool (Optional)
  mac_address = string (Computed)
  private_ip_address = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  virtual_machine_id = string (Computed)

  ip_configuration block "list" (Required) {
    name = string (Required)
    private_ip_address_allocation = string (Required)
    gateway_load_balancer_frontend_ip_configuration_id = string (Optional, Computed)
    primary = bool (Optional, Computed)
    private_ip_address = string (Optional, Computed)
    private_ip_address_version = string (Optional)
    public_ip_address_id = string (Optional)
    subnet_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
