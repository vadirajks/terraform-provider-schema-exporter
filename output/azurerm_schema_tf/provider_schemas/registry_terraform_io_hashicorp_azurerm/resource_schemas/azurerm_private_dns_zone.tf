resource "azurerm_private_dns_zone" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  max_number_of_record_sets = number (Computed)
  max_number_of_virtual_network_links = number (Computed)
  max_number_of_virtual_network_links_with_registration = number (Computed)
  number_of_record_sets = number (Computed)
  tags = ['map', 'string'] (Optional)

  soa_record block "list" (Optional) {
    email = string (Required)
    expire_time = number (Optional)
    fqdn = string (Computed)
    host_name = string (Computed)
    minimum_ttl = number (Optional)
    refresh_time = number (Optional)
    retry_time = number (Optional)
    serial_number = number (Computed)
    tags = ['map', 'string'] (Optional)
    ttl = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
