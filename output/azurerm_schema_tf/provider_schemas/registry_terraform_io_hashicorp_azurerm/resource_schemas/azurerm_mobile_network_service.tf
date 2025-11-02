resource "azurerm_mobile_network_service" "name" {
  location = string (Required)
  mobile_network_id = string (Required)
  name = string (Required)
  service_precedence = number (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  pcc_rule block "list" (Required) {
    name = string (Required)
    precedence = number (Required)
    traffic_control_enabled = bool (Optional)

    qos_policy block "list" (Optional) {
      qos_indicator = number (Required)
      allocation_and_retention_priority_level = number (Optional)
      preemption_capability = string (Optional)
      preemption_vulnerability = string (Optional)

      guaranteed_bit_rate block "list" (Optional) {
        downlink = string (Required)
        uplink = string (Required)
      }

      maximum_bit_rate block "list" (Required) {
        downlink = string (Required)
        uplink = string (Required)
      }
    }

    service_data_flow_template block "list" (Required) {
      direction = string (Required)
      name = string (Required)
      protocol = ['list', 'string'] (Required)
      remote_ip_list = ['list', 'string'] (Required)
      ports = ['list', 'string'] (Optional)
    }
  }

  service_qos_policy block "list" (Optional) {
    allocation_and_retention_priority_level = number (Optional)
    preemption_capability = string (Optional)
    preemption_vulnerability = string (Optional)
    qos_indicator = number (Optional)

    maximum_bit_rate block "list" (Required) {
      downlink = string (Required)
      uplink = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
