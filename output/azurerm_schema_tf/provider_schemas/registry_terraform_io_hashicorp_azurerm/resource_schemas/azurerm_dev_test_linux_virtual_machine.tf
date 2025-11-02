resource "azurerm_dev_test_linux_virtual_machine" "name" {
  lab_name = string (Required)
  lab_subnet_name = string (Required)
  lab_virtual_network_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  size = string (Required)
  storage_type = string (Required)
  username = string (Required)
  allow_claim = bool (Optional)
  disallow_public_ip_address = bool (Optional)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  notes = string (Optional)
  password = string (Optional)
  ssh_key = string (Optional)
  tags = ['map', 'string'] (Optional)
  unique_identifier = string (Computed)

  gallery_image_reference block "list" (Required) {
    offer = string (Required)
    publisher = string (Required)
    sku = string (Required)
    version = string (Required)
  }

  inbound_nat_rule block "set" (Optional) {
    backend_port = number (Required)
    protocol = string (Required)
    frontend_port = number (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
