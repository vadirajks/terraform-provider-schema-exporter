data "azurerm_databox_edge_device" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  device_properties = ['list', ['object', {'capacity': 'number', 'configured_role_types': ['list', 'string'], 'culture': 'string', 'hcs_version': 'string', 'model': 'string', 'node_count': 'number', 'serial_number': 'string', 'software_version': 'string', 'status': 'string', 'time_zone': 'string', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
