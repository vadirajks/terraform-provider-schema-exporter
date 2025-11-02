resource "azurerm_arc_kubernetes_cluster" "name" {
  agent_public_key_certificate = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  agent_version = string (Computed)
  distribution = string (Computed)
  id = string (Optional, Computed)
  infrastructure = string (Computed)
  kubernetes_version = string (Computed)
  offering = string (Computed)
  tags = ['map', 'string'] (Optional)
  total_core_count = number (Computed)
  total_node_count = number (Computed)

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
