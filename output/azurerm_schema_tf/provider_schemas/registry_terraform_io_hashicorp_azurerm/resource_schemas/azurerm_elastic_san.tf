resource "azurerm_elastic_san" "name" {
  base_size_in_tib = number (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  extended_size_in_tib = number (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  total_iops = number (Computed)
  total_mbps = number (Computed)
  total_size_in_tib = number (Computed)
  total_volume_size_in_gib = number (Computed)
  volume_group_count = number (Computed)
  zones = ['set', 'string'] (Optional)

  sku block "list" (Required) {
    name = string (Required)
    tier = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
