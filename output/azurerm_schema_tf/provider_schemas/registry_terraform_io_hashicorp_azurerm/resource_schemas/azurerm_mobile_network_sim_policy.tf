resource "azurerm_mobile_network_sim_policy" "name" {
  default_slice_id = string (Required)
  location = string (Required)
  mobile_network_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  rat_frequency_selection_priority_index = number (Optional)
  registration_timer_in_seconds = number (Optional)
  tags = ['map', 'string'] (Optional)

  slice block "list" (Required) {
    default_data_network_id = string (Required)
    slice_id = string (Required)

    data_network block "list" (Required) {
      allowed_services_ids = ['list', 'string'] (Required)
      data_network_id = string (Required)
      qos_indicator = number (Required)
      additional_allowed_session_types = ['list', 'string'] (Optional)
      allocation_and_retention_priority_level = number (Optional)
      default_session_type = string (Optional)
      max_buffered_packets = number (Optional)
      preemption_capability = string (Optional)
      preemption_vulnerability = string (Optional)

      session_aggregate_maximum_bit_rate block "list" (Required) {
        downlink = string (Required)
        uplink = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user_equipment_aggregate_maximum_bit_rate block "list" (Required) {
    downlink = string (Required)
    uplink = string (Required)
  }
}
