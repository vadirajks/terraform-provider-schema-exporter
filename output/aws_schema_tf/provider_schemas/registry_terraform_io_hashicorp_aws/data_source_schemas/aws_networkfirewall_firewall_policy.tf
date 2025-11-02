data "aws_networkfirewall_firewall_policy" "name" {
  arn = string (Optional)
  description = string (Computed)
  firewall_policy = ['list', ['object', {'policy_variables': ['list', ['object', {'rule_variables': ['set', ['object', {'ip_set': ['list', ['object', {'definition': ['set', 'string']}]], 'key': 'string'}]]}]], 'stateful_default_actions': ['set', 'string'], 'stateful_engine_options': ['list', ['object', {'flow_timeouts': ['list', ['object', {'tcp_idle_timeout_seconds': 'number'}]], 'rule_order': 'string', 'stream_exception_policy': 'string'}]], 'stateful_rule_group_reference': ['set', ['object', {'deep_threat_inspection': 'string', 'override': ['list', ['object', {'action': 'string'}]], 'priority': 'number', 'resource_arn': 'string'}]], 'stateless_custom_action': ['set', ['object', {'action_definition': ['list', ['object', {'publish_metric_action': ['list', ['object', {'dimension': ['set', ['object', {'value': 'string'}]]}]]}]], 'action_name': 'string'}]], 'stateless_default_actions': ['set', 'string'], 'stateless_fragment_default_actions': ['set', 'string'], 'stateless_rule_group_reference': ['set', ['object', {'priority': 'number', 'resource_arn': 'string'}]], 'tls_inspection_configuration_arn': 'string'}]] (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  update_token = string (Computed)
}
