resource "azurerm_firewall_nat_rule_collection" "name" {
  action = string (Required)
  azure_firewall_name = string (Required)
  name = string (Required)
  priority = number (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  rule block "list" (Required) {
    destination_addresses = ['list', 'string'] (Required)
    destination_ports = ['list', 'string'] (Required)
    name = string (Required)
    protocols = ['list', 'string'] (Required)
    translated_address = string (Required)
    translated_port = string (Required)
    description = string (Optional)
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
