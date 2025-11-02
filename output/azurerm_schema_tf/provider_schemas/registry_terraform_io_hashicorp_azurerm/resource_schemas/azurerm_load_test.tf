resource "azurerm_load_test" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  data_plane_uri = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  encryption block "list" (Optional) {
    key_url = string (Required)

    identity block "list" (Required) {
      identity_id = string (Required)
      type = string (Required)
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
