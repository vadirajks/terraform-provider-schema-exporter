resource "azurerm_spring_cloud_builder" "name" {
  name = string (Required)
  spring_cloud_service_id = string (Required)
  id = string (Optional, Computed)

  build_pack_group block "set" (Required) {
    name = string (Required)
    build_pack_ids = ['list', 'string'] (Optional)
  }

  stack block "list" (Required) {
    id = string (Required)
    version = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
