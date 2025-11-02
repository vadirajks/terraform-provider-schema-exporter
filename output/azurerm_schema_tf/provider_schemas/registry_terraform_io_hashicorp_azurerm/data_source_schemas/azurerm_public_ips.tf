data "azurerm_public_ips" "name" {
  resource_group_name = string (Required)
  allocation_type = string (Optional)
  attachment_status = string (Optional)
  id = string (Optional, Computed)
  name_prefix = string (Optional)
  public_ips = ['list', ['object', {'domain_name_label': 'string', 'fqdn': 'string', 'id': 'string', 'ip_address': 'string', 'name': 'string'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
