resource "azurerm_machine_learning_compute_instance" "name" {
  machine_learning_workspace_id = string (Required)
  name = string (Required)
  virtual_machine_size = string (Required)
  authorization_type = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  node_public_ip_enabled = bool (Optional)
  subnet_resource_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  assign_to_user block "list" (Optional) {
    object_id = string (Optional)
    tenant_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  ssh block "list" (Optional) {
    public_key = string (Required)
    port = number (Computed)
    username = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
