data "azurerm_mobile_network_sim_policy" "name" {
  mobile_network_id = string (Required)
  name = string (Required)
  default_slice_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  rat_frequency_selection_priority_index = number (Computed)
  registration_timer_in_seconds = number (Computed)
  slice = ['list', ['object', {'data_network': ['list', ['object', {'additional_allowed_session_types': ['list', 'string'], 'allocation_and_retention_priority_level': 'number', 'allowed_services_ids': ['list', 'string'], 'data_network_id': 'string', 'default_session_type': 'string', 'max_buffered_packets': 'number', 'preemption_capability': 'string', 'preemption_vulnerability': 'string', 'qos_indicator': 'number', 'session_aggregate_maximum_bit_rate': ['list', ['object', {'downlink': 'string', 'uplink': 'string'}]]}]], 'default_data_network_id': 'string', 'slice_id': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  user_equipment_aggregate_maximum_bit_rate = ['list', ['object', {'downlink': 'string', 'uplink': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
