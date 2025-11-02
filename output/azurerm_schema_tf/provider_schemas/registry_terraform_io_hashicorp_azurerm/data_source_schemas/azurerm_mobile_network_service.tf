data "azurerm_mobile_network_service" "name" {
  mobile_network_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)
  pcc_rule = ['list', ['object', {'name': 'string', 'precedence': 'number', 'qos_policy': ['list', ['object', {'allocation_and_retention_priority_level': 'number', 'guaranteed_bit_rate': ['list', ['object', {'downlink': 'string', 'uplink': 'string'}]], 'maximum_bit_rate': ['list', ['object', {'downlink': 'string', 'uplink': 'string'}]], 'preemption_capability': 'string', 'preemption_vulnerability': 'string', 'qos_indicator': 'number'}]], 'service_data_flow_template': ['list', ['object', {'direction': 'string', 'name': 'string', 'ports': ['list', 'string'], 'protocol': ['list', 'string'], 'remote_ip_list': ['list', 'string']}]], 'traffic_control_enabled': 'bool'}]] (Computed)
  service_precedence = number (Computed)
  service_qos_policy = ['list', ['object', {'allocation_and_retention_priority_level': 'number', 'maximum_bit_rate': ['list', ['object', {'downlink': 'string', 'uplink': 'string'}]], 'preemption_capability': 'string', 'preemption_vulnerability': 'string', 'qos_indicator': 'number'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
