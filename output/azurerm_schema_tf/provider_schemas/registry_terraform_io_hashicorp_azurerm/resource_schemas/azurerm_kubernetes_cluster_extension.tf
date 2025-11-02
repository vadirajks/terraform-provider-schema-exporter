resource "azurerm_kubernetes_cluster_extension" "name" {
  cluster_id = string (Required)
  extension_type = string (Required)
  name = string (Required)
  aks_assigned_identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  configuration_protected_settings = ['map', 'string'] (Optional)
  configuration_settings = ['map', 'string'] (Optional)
  current_version = string (Computed)
  id = string (Optional, Computed)
  release_namespace = string (Optional, Computed)
  release_train = string (Optional, Computed)
  target_namespace = string (Optional, Computed)
  version = string (Optional)

  plan block "list" (Optional) {
    name = string (Required)
    product = string (Required)
    publisher = string (Required)
    promotion_code = string (Optional)
    version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
