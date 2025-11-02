resource "azurerm_lb" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  edge_zone = string (Optional)
  id = string (Optional, Computed)
  private_ip_address = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  public_ip_address_id = string (Optional, Computed)
  sku = string (Optional)
  sku_tier = string (Optional)
  subnet_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  frontend_ip_configuration block "list" (Optional) {
    name = string (Required)
    gateway_load_balancer_frontend_ip_configuration_id = string (Optional, Computed)
    id = string (Computed)
    inbound_nat_rules = ['set', 'string'] (Computed)
    load_balancer_rules = ['set', 'string'] (Computed)
    outbound_rules = ['set', 'string'] (Computed)
    private_ip_address = string (Optional, Computed)
    private_ip_address_allocation = string (Optional, Computed)
    private_ip_address_version = string (Optional, Computed)
    public_ip_address_id = string (Optional)
    public_ip_prefix_id = string (Optional, Computed)
    subnet_id = string (Optional)
    zones = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
