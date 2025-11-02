resource "azurerm_monitor_action_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  short_name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  tags = ['map', 'string'] (Optional)

  arm_role_receiver block "list" (Optional) {
    name = string (Required)
    role_id = string (Required)
    use_common_alert_schema = bool (Optional)
  }

  automation_runbook_receiver block "list" (Optional) {
    automation_account_id = string (Required)
    is_global_runbook = bool (Required)
    name = string (Required)
    runbook_name = string (Required)
    service_uri = string (Required)
    webhook_resource_id = string (Required)
    use_common_alert_schema = bool (Optional)
  }

  azure_app_push_receiver block "list" (Optional) {
    email_address = string (Required)
    name = string (Required)
  }

  azure_function_receiver block "list" (Optional) {
    function_app_resource_id = string (Required)
    function_name = string (Required)
    http_trigger_url = string (Required)
    name = string (Required)
    use_common_alert_schema = bool (Optional)
  }

  email_receiver block "list" (Optional) {
    email_address = string (Required)
    name = string (Required)
    use_common_alert_schema = bool (Optional)
  }

  event_hub_receiver block "list" (Optional) {
    event_hub_name = string (Required)
    event_hub_namespace = string (Required)
    name = string (Required)
    subscription_id = string (Optional, Computed)
    tenant_id = string (Optional, Computed)
    use_common_alert_schema = bool (Optional)
  }

  itsm_receiver block "list" (Optional) {
    connection_id = string (Required)
    name = string (Required)
    region = string (Required)
    ticket_configuration = string (Required)
    workspace_id = string (Required)
  }

  logic_app_receiver block "list" (Optional) {
    callback_url = string (Required)
    name = string (Required)
    resource_id = string (Required)
    use_common_alert_schema = bool (Optional)
  }

  sms_receiver block "list" (Optional) {
    country_code = string (Required)
    name = string (Required)
    phone_number = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  voice_receiver block "list" (Optional) {
    country_code = string (Required)
    name = string (Required)
    phone_number = string (Required)
  }

  webhook_receiver block "list" (Optional) {
    name = string (Required)
    service_uri = string (Required)
    use_common_alert_schema = bool (Optional)

    aad_auth block "list" (Optional) {
      object_id = string (Required)
      identifier_uri = string (Optional, Computed)
      tenant_id = string (Optional, Computed)
    }
  }
}
