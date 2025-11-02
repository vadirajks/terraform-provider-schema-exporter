data "azurerm_mssql_managed_instance" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  collation = string (Computed)
  customer_managed_key_id = string (Computed)
  dns_zone = string (Computed)
  dns_zone_partner_id = string (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  license_type = string (Computed)
  location = string (Computed)
  minimum_tls_version = string (Computed)
  proxy_override = string (Computed)
  public_data_endpoint_enabled = bool (Computed)
  sku_name = string (Computed)
  storage_account_type = string (Computed)
  storage_size_in_gb = number (Computed)
  subnet_id = string (Computed)
  tags = ['map', 'string'] (Computed)
  timezone_id = string (Computed)
  vcores = number (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
