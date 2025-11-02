data "azurerm_site_recovery_replication_recovery_plan" "name" {
  name = string (Required)
  recovery_vault_id = string (Required)
  azure_to_azure_settings = ['list', ['object', {'primary_edge_zone': 'string', 'primary_zone': 'string', 'recovery_edge_zone': 'string', 'recovery_zone': 'string'}]] (Computed)
  failover_deployment_model = string (Computed)
  id = string (Optional, Computed)
  recovery_group = ['set', ['object', {'post_action': ['set', ['list', ['object', {'fabric_location': 'string', 'fail_over_directions': ['set', 'string'], 'fail_over_types': ['set', 'string'], 'manual_action_instruction': 'string', 'name': 'string', 'runbook_id': 'string', 'script_path': 'string', 'type': 'string'}]]], 'pre_action': ['set', ['list', ['object', {'fabric_location': 'string', 'fail_over_directions': ['set', 'string'], 'fail_over_types': ['set', 'string'], 'manual_action_instruction': 'string', 'name': 'string', 'runbook_id': 'string', 'script_path': 'string', 'type': 'string'}]]], 'replicated_protected_items': ['list', 'string'], 'type': 'string'}]] (Computed)
  source_recovery_fabric_id = string (Computed)
  target_recovery_fabric_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
