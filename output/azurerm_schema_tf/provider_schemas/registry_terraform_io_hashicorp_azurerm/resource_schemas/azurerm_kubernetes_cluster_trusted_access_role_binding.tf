resource "azurerm_kubernetes_cluster_trusted_access_role_binding" "name" {
  kubernetes_cluster_id = string (Required)
  name = string (Required)
  roles = ['list', 'string'] (Required)
  source_resource_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
