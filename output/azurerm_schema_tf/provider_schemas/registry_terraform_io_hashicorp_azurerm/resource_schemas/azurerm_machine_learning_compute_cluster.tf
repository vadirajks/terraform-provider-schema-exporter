resource "azurerm_machine_learning_compute_cluster" "name" {
  location = string (Required)
  machine_learning_workspace_id = string (Required)
  name = string (Required)
  vm_priority = string (Required)
  vm_size = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  node_public_ip_enabled = bool (Optional)
  ssh_public_access_enabled = bool (Optional)
  subnet_resource_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  scale_settings block "list" (Required) {
    max_node_count = number (Required)
    min_node_count = number (Required)
    scale_down_nodes_after_idle_duration = string (Required)
  }

  ssh block "list" (Optional) {
    admin_username = string (Required)
    admin_password = string (Optional)
    key_value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
