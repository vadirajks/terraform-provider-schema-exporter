resource "azurerm_firewall_application_rule_collection" "name" {
  action = string (Required)
  azure_firewall_name = string (Required)
  name = string (Required)
  priority = number (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)

  rule block "list" (Required) {
    name = string (Required)
    description = string (Optional)
    fqdn_tags = ['list', 'string'] (Optional)
    source_addresses = ['list', 'string'] (Optional)
    source_ip_groups = ['list', 'string'] (Optional)
    target_fqdns = ['list', 'string'] (Optional)

    protocol block "list" (Optional) {
      port = number (Required)
      type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
