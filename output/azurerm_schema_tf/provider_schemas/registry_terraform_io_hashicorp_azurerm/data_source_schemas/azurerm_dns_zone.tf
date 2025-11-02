data "azurerm_dns_zone" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  max_number_of_record_sets = number (Computed)
  name_servers = ['set', 'string'] (Computed)
  number_of_record_sets = number (Computed)
  resource_group_name = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
