resource "azurerm_elastic_san_volume" "name" {
  name = string (Required)
  size_in_gib = number (Required)
  volume_group_id = string (Required)
  id = string (Optional, Computed)
  target_iqn = string (Computed)
  target_portal_hostname = string (Computed)
  target_portal_port = number (Computed)
  volume_id = string (Computed)

  create_source block "list" (Optional) {
    source_id = string (Required)
    source_type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
