data "aws_route53_resolver_firewall_rules" "name" {
  firewall_rule_group_id = string (Required)
  action = string (Optional)
  firewall_rules = ['list', ['object', {'action': 'string', 'block_override_dns_type': 'string', 'block_override_domain': 'string', 'block_override_ttl': 'number', 'block_response': 'string', 'creation_time': 'string', 'creator_request_id': 'string', 'firewall_domain_list_id': 'string', 'firewall_rule_group_id': 'string', 'modification_time': 'string', 'name': 'string', 'priority': 'number'}]] (Computed)
  id = string (Optional, Computed)
  priority = number (Optional)
  region = string (Optional, Computed)
}
