resource "azurerm_databox_edge_order" "name" {
  device_name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  return_tracking = ['set', ['object', {'carrier_name': 'string', 'serial_number': 'string', 'tracking_id': 'string', 'tracking_url': 'string'}]] (Computed)
  serial_number = string (Computed)
  shipment_history = ['set', ['object', {'additional_details': ['map', 'string'], 'comments': 'string', 'last_update': 'string'}]] (Computed)
  shipment_tracking = ['set', ['object', {'carrier_name': 'string', 'serial_number': 'string', 'tracking_id': 'string', 'tracking_url': 'string'}]] (Computed)
  status = ['list', ['object', {'additional_details': ['map', 'string'], 'comments': 'string', 'info': 'string', 'last_update': 'string'}]] (Computed)

  contact block "list"  (Required){
    company_name = string (Required)
    emails = ['set', 'string'] (Required)
    name = string (Required)
    phone_number = string (Required)
  }

  shipment_address block "list"  (Required){
    address = ['list', 'string'] (Required)
    city = string (Required)
    country = string (Required)
    postal_code = string (Required)
    state = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
