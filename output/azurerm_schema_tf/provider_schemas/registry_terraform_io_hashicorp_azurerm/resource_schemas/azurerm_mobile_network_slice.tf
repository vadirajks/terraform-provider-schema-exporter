resource "azurerm_mobile_network_slice" "name" {
  location = string (Required)
  mobile_network_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  slice_differentiator = string (Optional, Computed)
  slice_service_type = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  single_network_slice_selection_assistance_information block "list" (Optional) {
    slice_service_type = number (Required)
    slice_differentiator = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
