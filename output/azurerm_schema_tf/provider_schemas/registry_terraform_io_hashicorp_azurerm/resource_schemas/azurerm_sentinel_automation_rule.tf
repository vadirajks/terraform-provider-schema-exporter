resource "azurerm_sentinel_automation_rule" "name" {
  display_name = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  order = number (Required)
  condition_json = string (Optional)
  enabled = bool (Optional)
  expiration = string (Optional)
  id = string (Optional, Computed)
  triggers_on = string (Optional)
  triggers_when = string (Optional)

  action_incident block "list" (Optional) {
    order = number (Required)
    classification = string (Optional)
    classification_comment = string (Optional)
    labels = ['list', 'string'] (Optional)
    owner_id = string (Optional)
    severity = string (Optional)
    status = string (Optional)
  }

  action_incident_task block "list" (Optional) {
    order = number (Required)
    title = string (Required)
    description = string (Optional)
  }

  action_playbook block "list" (Optional) {
    logic_app_id = string (Required)
    order = number (Required)
    tenant_id = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
