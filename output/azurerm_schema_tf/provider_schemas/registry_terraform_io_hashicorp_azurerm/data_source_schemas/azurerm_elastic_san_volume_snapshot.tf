data "azurerm_elastic_san_volume_snapshot" "name" {
  name = string (Required)
  volume_group_id = string (Required)
  id = string (Optional, Computed)
  source_id = string (Computed)
  source_volume_size_in_gib = number (Computed)
  volume_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
