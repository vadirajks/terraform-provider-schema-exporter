resource "azurerm_role_management_policy" "name" {
  role_definition_id = string (Required)
  scope = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)

  activation_rules block "list" (Optional) {
    maximum_duration = string (Optional, Computed)
    require_approval = bool (Optional, Computed)
    require_justification = bool (Optional, Computed)
    require_multifactor_authentication = bool (Optional, Computed)
    require_ticket_info = bool (Optional, Computed)
    required_conditional_access_authentication_context = string (Optional, Computed)

    approval_stage block "list" (Optional) {

      primary_approver block "set" (Required) {
        object_id = string (Required)
        type = string (Required)
      }
    }
  }

  active_assignment_rules block "list" (Optional) {
    expiration_required = bool (Optional, Computed)
    expire_after = string (Optional, Computed)
    require_justification = bool (Optional, Computed)
    require_multifactor_authentication = bool (Optional, Computed)
    require_ticket_info = bool (Optional, Computed)
  }

  eligible_assignment_rules block "list" (Optional) {
    expiration_required = bool (Optional, Computed)
    expire_after = string (Optional, Computed)
  }

  notification_rules block "list" (Optional) {

    active_assignments block "list" (Optional) {

      admin_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }

      approver_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }

      assignee_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }
    }

    eligible_activations block "list" (Optional) {

      admin_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }

      approver_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }

      assignee_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }
    }

    eligible_assignments block "list" (Optional) {

      admin_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }

      approver_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }

      assignee_notifications block "list" (Optional) {
        default_recipients = bool (Required)
        notification_level = string (Required)
        additional_recipients = ['set', 'string'] (Optional, Computed)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
