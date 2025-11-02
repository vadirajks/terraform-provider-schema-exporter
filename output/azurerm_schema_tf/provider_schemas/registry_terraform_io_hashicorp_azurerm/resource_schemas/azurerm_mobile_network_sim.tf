resource "azurerm_mobile_network_sim" "name" {
  authentication_key = string (Required)
  integrated_circuit_card_identifier = string (Required)
  international_mobile_subscriber_identity = string (Required)
  mobile_network_sim_group_id = string (Required)
  name = string (Required)
  operator_key_code = string (Required)
  device_type = string (Optional)
  id = string (Optional, Computed)
  sim_policy_id = string (Optional)
  sim_state = string (Computed)
  vendor_key_fingerprint = string (Computed)
  vendor_name = string (Computed)

  static_ip_configuration block "list" (Optional) {
    attached_data_network_id = string (Required)
    slice_id = string (Required)
    static_ipv4_address = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
