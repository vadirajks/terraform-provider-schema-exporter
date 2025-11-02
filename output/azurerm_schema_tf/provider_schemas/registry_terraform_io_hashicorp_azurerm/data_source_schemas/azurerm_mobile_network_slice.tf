data "azurerm_mobile_network_slice" "name" {
  mobile_network_id = string (Required)
  name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  single_network_slice_selection_assistance_information = ['list', ['object', {'slice_differentiator': 'string', 'slice_service_type': 'number'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
