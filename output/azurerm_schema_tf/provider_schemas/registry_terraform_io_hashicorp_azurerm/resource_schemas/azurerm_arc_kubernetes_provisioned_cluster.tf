resource "azurerm_arc_kubernetes_provisioned_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  agent_version = string (Computed)
  arc_agent_auto_upgrade_enabled = bool (Optional)
  arc_agent_desired_version = string (Optional)
  distribution = string (Computed)
  id = string (Optional, Computed)
  infrastructure = string (Computed)
  kubernetes_version = string (Computed)
  offering = string (Computed)
  tags = ['map', 'string'] (Optional)
  total_core_count = number (Computed)
  total_node_count = number (Computed)

  azure_active_directory block "list" (Optional) {
    admin_group_object_ids = ['list', 'string'] (Optional)
    azure_rbac_enabled = bool (Optional)
    tenant_id = string (Optional)
  }

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
