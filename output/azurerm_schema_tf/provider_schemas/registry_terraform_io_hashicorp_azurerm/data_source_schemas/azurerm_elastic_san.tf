data "azurerm_elastic_san" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  base_size_in_tib = number (Computed)
  extended_size_in_tib = number (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  sku = ['list', ['object', {'name': 'string', 'tier': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  total_iops = number (Computed)
  total_mbps = number (Computed)
  total_size_in_tib = number (Computed)
  total_volume_size_in_gib = number (Computed)
  volume_group_count = number (Computed)
  zones = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
