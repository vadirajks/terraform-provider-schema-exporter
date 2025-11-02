resource "azurerm_firewall_network_rule_collection" "name" {
  action = string (Required)
  azure_firewall_name = string (Required)
  name = string (Required)
  priority = number (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  rule block "list" (Required) {
    destination_ports = ['list', 'string'] (Required)
    name = string (Required)
    protocols = ['list', 'string'] (Required)
    description = string (Optional)
    destination_addresses = ['list', 'string'] (Optional)
    destination_fqdns = ['list', 'string'] (Optional)
    destination_ip_groups = ['list', 'string'] (Optional)
    source_addresses = ['list', 'string'] (Optional)
    source_ip_groups = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
