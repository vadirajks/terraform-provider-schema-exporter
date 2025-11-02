data "azurerm_monitor_action_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  arm_role_receiver = ['list', ['object', {'name': 'string', 'role_id': 'string', 'use_common_alert_schema': 'bool'}]] (Computed)
  automation_runbook_receiver = ['list', ['object', {'automation_account_id': 'string', 'is_global_runbook': 'bool', 'name': 'string', 'runbook_name': 'string', 'service_uri': 'string', 'use_common_alert_schema': 'bool', 'webhook_resource_id': 'string'}]] (Computed)
  azure_app_push_receiver = ['list', ['object', {'email_address': 'string', 'name': 'string'}]] (Computed)
  azure_function_receiver = ['list', ['object', {'function_app_resource_id': 'string', 'function_name': 'string', 'http_trigger_url': 'string', 'name': 'string', 'use_common_alert_schema': 'bool'}]] (Computed)
  email_receiver = ['list', ['object', {'email_address': 'string', 'name': 'string', 'use_common_alert_schema': 'bool'}]] (Computed)
  enabled = bool (Computed)
  event_hub_receiver = ['list', ['object', {'event_hub_name': 'string', 'event_hub_namespace': 'string', 'name': 'string', 'subscription_id': 'string', 'tenant_id': 'string', 'use_common_alert_schema': 'bool'}]] (Computed)
  id = string (Optional, Computed)
  itsm_receiver = ['list', ['object', {'connection_id': 'string', 'name': 'string', 'region': 'string', 'ticket_configuration': 'string', 'workspace_id': 'string'}]] (Computed)
  logic_app_receiver = ['list', ['object', {'callback_url': 'string', 'name': 'string', 'resource_id': 'string', 'use_common_alert_schema': 'bool'}]] (Computed)
  short_name = string (Computed)
  sms_receiver = ['list', ['object', {'country_code': 'string', 'name': 'string', 'phone_number': 'string'}]] (Computed)
  voice_receiver = ['list', ['object', {'country_code': 'string', 'name': 'string', 'phone_number': 'string'}]] (Computed)
  webhook_receiver = ['list', ['object', {'aad_auth': ['list', ['object', {'identifier_uri': 'string', 'object_id': 'string', 'tenant_id': 'string'}]], 'name': 'string', 'service_uri': 'string', 'use_common_alert_schema': 'bool'}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
