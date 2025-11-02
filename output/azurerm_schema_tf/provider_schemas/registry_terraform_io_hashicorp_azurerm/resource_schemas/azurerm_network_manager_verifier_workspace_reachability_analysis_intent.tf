resource "azurerm_network_manager_verifier_workspace_reachability_analysis_intent" "name" {
  destination_resource_id = string (Required)
  name = string (Required)
  source_resource_id = string (Required)
  verifier_workspace_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  ip_traffic block "list" (Required) {
    destination_ips = ['list', 'string'] (Required)
    destination_ports = ['list', 'string'] (Required)
    protocols = ['list', 'string'] (Required)
    source_ips = ['list', 'string'] (Required)
    source_ports = ['list', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
