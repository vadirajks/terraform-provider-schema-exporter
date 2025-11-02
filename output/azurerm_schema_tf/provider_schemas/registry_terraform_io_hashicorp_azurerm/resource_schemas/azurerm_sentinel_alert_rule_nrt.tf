resource "azurerm_sentinel_alert_rule_nrt" "name" {
  display_name = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  query = string (Required)
  severity = string (Required)
  alert_rule_template_guid = string (Optional)
  alert_rule_template_version = string (Optional)
  custom_details = ['map', 'string'] (Optional)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  suppression_duration = string (Optional)
  suppression_enabled = bool (Optional)
  tactics = ['set', 'string'] (Optional)
  techniques = ['set', 'string'] (Optional)

  alert_details_override block "list" (Optional) {
    description_format = string (Optional)
    display_name_format = string (Optional)
    severity_column_name = string (Optional)
    tactics_column_name = string (Optional)

    dynamic_property block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  entity_mapping block "list" (Optional) {
    entity_type = string (Required)

    field_mapping block "list" (Required) {
      column_name = string (Required)
      identifier = string (Required)
    }
  }

  event_grouping block "list" (Required) {
    aggregation_method = string (Required)
  }

  incident block "list" (Optional) {
    create_incident_enabled = bool (Required)

    grouping block "list" (Required) {
      by_alert_details = ['list', 'string'] (Optional)
      by_custom_details = ['list', 'string'] (Optional)
      by_entities = ['list', 'string'] (Optional)
      enabled = bool (Optional)
      entity_matching_method = string (Optional)
      lookback_duration = string (Optional)
      reopen_closed_incidents = bool (Optional)
    }
  }

  sentinel_entity_mapping block "list" (Optional) {
    column_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
