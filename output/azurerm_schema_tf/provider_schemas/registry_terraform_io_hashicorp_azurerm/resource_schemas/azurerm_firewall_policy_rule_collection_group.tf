resource "azurerm_firewall_policy_rule_collection_group" "name" {
  firewall_policy_id = string (Required)
  name = string (Required)
  priority = number (Required)
  id = string (Optional, Computed)

  application_rule_collection block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    priority = number (Required)

    rule block "list" (Required) {
      name = string (Required)
      description = string (Optional)
      destination_addresses = ['list', 'string'] (Optional)
      destination_fqdn_tags = ['list', 'string'] (Optional)
      destination_fqdns = ['list', 'string'] (Optional)
      destination_urls = ['list', 'string'] (Optional)
      source_addresses = ['list', 'string'] (Optional)
      source_ip_groups = ['list', 'string'] (Optional)
      terminate_tls = bool (Optional)
      web_categories = ['list', 'string'] (Optional)

      http_headers block "list" (Optional) {
        name = string (Required)
        value = string (Required)
      }

      protocols block "list" (Optional) {
        port = number (Required)
        type = string (Required)
      }
    }
  }

  nat_rule_collection block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    priority = number (Required)

    rule block "list" (Required) {
      name = string (Required)
      protocols = ['list', 'string'] (Required)
      translated_port = number (Required)
      description = string (Optional)
      destination_address = string (Optional)
      destination_ports = ['list', 'string'] (Optional)
      source_addresses = ['list', 'string'] (Optional)
      source_ip_groups = ['list', 'string'] (Optional)
      translated_address = string (Optional)
      translated_fqdn = string (Optional)
    }
  }

  network_rule_collection block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    priority = number (Required)

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
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
