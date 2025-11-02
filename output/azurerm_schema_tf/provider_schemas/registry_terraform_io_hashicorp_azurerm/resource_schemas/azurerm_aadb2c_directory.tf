resource "azurerm_aadb2c_directory" "name" {
  data_residency_location = string (Required)
  domain_name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  billing_type = string (Computed)
  country_code = string (Optional, Computed)
  display_name = string (Optional, Computed)
  effective_start_date = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
