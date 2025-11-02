resource "azurerm_spring_cloud_build_pack_binding" "name" {
  name = string (Required)
  spring_cloud_builder_id = string (Required)
  binding_type = string (Optional)
  id = string (Optional, Computed)

  launch block "list" (Optional) {
    properties = ['map', 'string'] (Optional)
    secrets = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
