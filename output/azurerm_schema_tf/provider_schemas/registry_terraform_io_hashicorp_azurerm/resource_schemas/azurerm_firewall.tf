resource "azurerm_firewall" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  sku_tier = string (Required)
  dns_proxy_enabled = bool (Optional, Computed)
  dns_servers = ['list', 'string'] (Optional)
  firewall_policy_id = string (Optional)
  id = string (Optional, Computed)
  private_ip_ranges = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  threat_intel_mode = string (Optional, Computed)
  zones = ['set', 'string'] (Optional)

  ip_configuration block "list" (Optional) {
    name = string (Required)
    private_ip_address = string (Computed)
    public_ip_address_id = string (Optional)
    subnet_id = string (Optional)
  }

  management_ip_configuration block "list" (Optional) {
    name = string (Required)
    public_ip_address_id = string (Required)
    subnet_id = string (Required)
    private_ip_address = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  virtual_hub block "list" (Optional) {
    virtual_hub_id = string (Required)
    private_ip_address = string (Computed)
    public_ip_addresses = ['list', 'string'] (Computed)
    public_ip_count = number (Optional)
  }
}
