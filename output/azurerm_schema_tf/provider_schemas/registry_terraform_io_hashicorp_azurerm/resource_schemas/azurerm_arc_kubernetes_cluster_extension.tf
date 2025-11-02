resource "azurerm_arc_kubernetes_cluster_extension" "name" {
  cluster_id = string (Required)
  extension_type = string (Required)
  name = string (Required)
  configuration_protected_settings = ['map', 'string'] (Optional)
  configuration_settings = ['map', 'string'] (Optional)
  current_version = string (Computed)
  id = string (Optional, Computed)
  release_namespace = string (Optional, Computed)
  release_train = string (Optional, Computed)
  target_namespace = string (Optional, Computed)
  version = string (Optional)

  identity block "list" (Required) {
    type = string (Required)
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
