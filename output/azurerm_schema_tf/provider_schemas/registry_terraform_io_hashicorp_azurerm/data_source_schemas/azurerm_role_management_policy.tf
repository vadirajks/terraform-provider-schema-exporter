data "azurerm_role_management_policy" "name" {
  role_definition_id = string (Required)
  scope = string (Required)
  activation_rules = ['list', ['object', {'approval_stage': ['list', ['object', {'primary_approver': ['set', ['object', {'object_id': 'string', 'type': 'string'}]]}]], 'maximum_duration': 'string', 'require_approval': 'bool', 'require_justification': 'bool', 'require_multifactor_authentication': 'bool', 'require_ticket_info': 'bool', 'required_conditional_access_authentication_context': 'string'}]] (Computed)
  active_assignment_rules = ['list', ['object', {'expiration_required': 'bool', 'expire_after': 'string', 'require_justification': 'bool', 'require_multifactor_authentication': 'bool', 'require_ticket_info': 'bool'}]] (Computed)
  description = string (Computed)
  eligible_assignment_rules = ['list', ['object', {'expiration_required': 'bool', 'expire_after': 'string'}]] (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  notification_rules = ['list', ['object', {'active_assignments': ['list', ['object', {'admin_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]], 'approver_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]], 'assignee_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]]}]], 'eligible_activations': ['list', ['object', {'admin_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]], 'approver_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]], 'assignee_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]]}]], 'eligible_assignments': ['list', ['object', {'admin_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]], 'approver_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]], 'assignee_notifications': ['list', ['object', {'additional_recipients': ['set', 'string'], 'default_recipients': 'bool', 'notification_level': 'string'}]]}]]}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
