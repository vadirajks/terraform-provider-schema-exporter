resource "azurerm_data_protection_backup_instance_kubernetes_cluster" "name" {
  backup_policy_id = string (Required)
  kubernetes_cluster_id = string (Required)
  location = string (Required)
  name = string (Required)
  snapshot_resource_group_name = string (Required)
  vault_id = string (Required)
  id = string (Optional, Computed)

  backup_datasource_parameters block "list" (Optional) {
    cluster_scoped_resources_enabled = bool (Optional)
    excluded_namespaces = ['list', 'string'] (Optional)
    excluded_resource_types = ['list', 'string'] (Optional)
    included_namespaces = ['list', 'string'] (Optional)
    included_resource_types = ['list', 'string'] (Optional)
    label_selectors = ['list', 'string'] (Optional)
    volume_snapshot_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
