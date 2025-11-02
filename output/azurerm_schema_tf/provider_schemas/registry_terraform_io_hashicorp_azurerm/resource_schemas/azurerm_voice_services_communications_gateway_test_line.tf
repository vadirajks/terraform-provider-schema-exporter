resource "azurerm_voice_services_communications_gateway_test_line" "name" {
  location = string (Required)
  name = string (Required)
  phone_number = string (Required)
  purpose = string (Required)
  voice_services_communications_gateway_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
