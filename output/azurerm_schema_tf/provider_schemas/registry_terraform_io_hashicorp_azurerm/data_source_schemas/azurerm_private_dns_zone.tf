data "azurerm_private_dns_zone" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  max_number_of_record_sets = number (Computed)
  max_number_of_virtual_network_links = number (Computed)
  max_number_of_virtual_network_links_with_registration = number (Computed)
  number_of_record_sets = number (Computed)
  resource_group_name = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
