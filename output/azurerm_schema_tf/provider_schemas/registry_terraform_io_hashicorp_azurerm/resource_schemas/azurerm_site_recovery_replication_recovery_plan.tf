resource "azurerm_site_recovery_replication_recovery_plan" "name" {
  name = string (Required)
  recovery_vault_id = string (Required)
  source_recovery_fabric_id = string (Required)
  target_recovery_fabric_id = string (Required)
  id = string (Optional, Computed)

  azure_to_azure_settings block "list" (Optional) {
    primary_edge_zone = string (Optional)
    primary_zone = string (Optional)
    recovery_edge_zone = string (Optional)
    recovery_zone = string (Optional)
  }

  boot_recovery_group block "list" (Required) {
    replicated_protected_items = ['list', 'string'] (Optional)

    post_action block "list" (Optional) {
      fail_over_directions = ['set', 'string'] (Required)
      fail_over_types = ['set', 'string'] (Required)
      name = string (Required)
      type = string (Required)
      fabric_location = string (Optional)
      manual_action_instruction = string (Optional)
      runbook_id = string (Optional)
      script_path = string (Optional)
    }

    pre_action block "list" (Optional) {
      fail_over_directions = ['set', 'string'] (Required)
      fail_over_types = ['set', 'string'] (Required)
      name = string (Required)
      type = string (Required)
      fabric_location = string (Optional)
      manual_action_instruction = string (Optional)
      runbook_id = string (Optional)
      script_path = string (Optional)
    }
  }

  failover_recovery_group block "list" (Required) {

    post_action block "list" (Optional) {
      fail_over_directions = ['set', 'string'] (Required)
      fail_over_types = ['set', 'string'] (Required)
      name = string (Required)
      type = string (Required)
      fabric_location = string (Optional)
      manual_action_instruction = string (Optional)
      runbook_id = string (Optional)
      script_path = string (Optional)
    }

    pre_action block "list" (Optional) {
      fail_over_directions = ['set', 'string'] (Required)
      fail_over_types = ['set', 'string'] (Required)
      name = string (Required)
      type = string (Required)
      fabric_location = string (Optional)
      manual_action_instruction = string (Optional)
      runbook_id = string (Optional)
      script_path = string (Optional)
    }
  }

  shutdown_recovery_group block "list" (Required) {

    post_action block "list" (Optional) {
      fail_over_directions = ['set', 'string'] (Required)
      fail_over_types = ['set', 'string'] (Required)
      name = string (Required)
      type = string (Required)
      fabric_location = string (Optional)
      manual_action_instruction = string (Optional)
      runbook_id = string (Optional)
      script_path = string (Optional)
    }

    pre_action block "list" (Optional) {
      fail_over_directions = ['set', 'string'] (Required)
      fail_over_types = ['set', 'string'] (Required)
      name = string (Required)
      type = string (Required)
      fabric_location = string (Optional)
      manual_action_instruction = string (Optional)
      runbook_id = string (Optional)
      script_path = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
