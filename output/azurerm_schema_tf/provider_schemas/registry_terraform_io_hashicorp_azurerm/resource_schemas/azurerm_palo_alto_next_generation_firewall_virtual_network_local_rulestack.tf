resource "azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  rulestack_id = string (Required)
  id = string (Optional, Computed)
  marketplace_offer_id = string (Optional)
  plan_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  destination_nat block "list" (Optional) {
    name = string (Required)
    protocol = string (Required)

    backend_config block "list" (Optional) {
      port = number (Required)
      public_ip_address = string (Required)
    }

    frontend_config block "list" (Optional) {
      port = number (Required)
      public_ip_address_id = string (Required)
    }
  }

  dns_settings block "list" (Optional) {
    azure_dns_servers = ['list', 'string'] (Computed)
    dns_servers = ['list', 'string'] (Optional)
    use_azure_dns = bool (Optional)
  }

  network_profile block "list" (Required) {
    public_ip_address_ids = ['list', 'string'] (Required)
    egress_nat_ip_address_ids = ['list', 'string'] (Optional)
    egress_nat_ip_addresses = ['list', 'string'] (Computed)
    public_ip_addresses = ['list', 'string'] (Computed)
    trusted_address_ranges = ['list', 'string'] (Optional)

    vnet_configuration block "list" (Required) {
      virtual_network_id = string (Required)
      ip_of_trust_for_user_defined_routes = string (Computed)
      trusted_subnet_id = string (Optional)
      untrusted_subnet_id = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
