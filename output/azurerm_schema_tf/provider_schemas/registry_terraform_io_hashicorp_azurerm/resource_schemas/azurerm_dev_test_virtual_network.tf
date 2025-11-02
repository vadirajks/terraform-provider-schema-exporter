resource "azurerm_dev_test_virtual_network" "name" {
  lab_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  unique_identifier = string (Computed)

  subnet block "list" (Optional) {
    name = string (Computed)
    use_in_virtual_machine_creation = string (Optional)
    use_public_ip_address = string (Optional)

    shared_public_ip_address block "list" (Optional) {

      allowed_ports block "list" (Optional) {
        backend_port = number (Optional)
        transport_protocol = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
