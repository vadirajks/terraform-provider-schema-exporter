data "azurerm_aadb2c_directory" "name" {
  domain_name = string (Required)
  resource_group_name = string (Required)
  billing_type = string (Computed)
  data_residency_location = string (Computed)
  effective_start_date = string (Computed)
  id = string (Optional, Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
