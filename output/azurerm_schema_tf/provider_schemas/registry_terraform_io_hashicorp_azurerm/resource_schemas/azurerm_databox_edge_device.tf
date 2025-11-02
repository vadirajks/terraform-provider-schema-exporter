resource "azurerm_databox_edge_device" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  device_properties = ['list', ['object', {'capacity': 'number', 'configured_role_types': ['list', 'string'], 'culture': 'string', 'hcs_version': 'string', 'model': 'string', 'node_count': 'number', 'serial_number': 'string', 'software_version': 'string', 'status': 'string', 'time_zone': 'string', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
