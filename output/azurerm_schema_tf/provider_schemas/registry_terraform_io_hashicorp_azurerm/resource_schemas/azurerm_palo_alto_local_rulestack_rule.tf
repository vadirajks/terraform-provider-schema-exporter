resource "azurerm_palo_alto_local_rulestack_rule" "name" {
  action = string (Required)
  applications = ['list', 'string'] (Required)
  name = string (Required)
  priority = number (Required)
  rulestack_id = string (Required)
  audit_comment = string (Optional)
  decryption_rule_type = string (Optional)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  inspection_certificate_id = string (Optional)
  logging_enabled = bool (Optional)
  negate_destination = bool (Optional)
  negate_source = bool (Optional)
  protocol = string (Optional)
  protocol_ports = ['list', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)

  category block "list" (Optional) {
    custom_urls = ['list', 'string'] (Required)
    feeds = ['list', 'string'] (Optional)
  }

  destination block "list" (Required) {
    cidrs = ['list', 'string'] (Optional)
    countries = ['list', 'string'] (Optional)
    feeds = ['list', 'string'] (Optional)
    local_rulestack_fqdn_list_ids = ['list', 'string'] (Optional)
    local_rulestack_prefix_list_ids = ['list', 'string'] (Optional)
  }

  source block "list" (Required) {
    cidrs = ['list', 'string'] (Optional)
    countries = ['list', 'string'] (Optional)
    feeds = ['list', 'string'] (Optional)
    local_rulestack_prefix_list_ids = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
