data "azurerm_mobile_network_sim" "name" {
  mobile_network_sim_group_id = string (Required)
  name = string (Required)
  device_type = string (Computed)
  id = string (Optional, Computed)
  integrated_circuit_card_identifier = string (Computed)
  international_mobile_subscriber_identity = string (Computed)
  sim_policy_id = string (Computed)
  sim_state = string (Computed)
  static_ip_configuration = ['list', ['object', {'attached_data_network_id': 'string', 'slice_id': 'string', 'static_ipv4_address': 'string'}]] (Computed)
  vendor_key_fingerprint = string (Computed)
  vendor_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
