resource "google_privileged_access_manager_entitlement" "name" {
  entitlement_id = string (Required)
  location = string (Required)
  max_request_duration = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  state = string (Computed)
  update_time = string (Computed)

  additional_notification_targets block "list" (Optional) {
    admin_email_recipients = ['set', 'string'] (Optional)
    requester_email_recipients = ['set', 'string'] (Optional)
  }

  approval_workflow block "list" (Optional) {

    manual_approvals block "list" (Required) {
      require_approver_justification = bool (Optional)

      steps block "list" (Required) {
        approvals_needed = number (Optional)
        approver_email_recipients = ['set', 'string'] (Optional)

        approvers block "list" (Required) {
          principals = ['set', 'string'] (Required)
        }
      }
    }
  }

  eligible_users block "list" (Required) {
    principals = ['set', 'string'] (Required)
  }

  privileged_access block "list" (Required) {

    gcp_iam_access block "list" (Required) {
      resource = string (Required)
      resource_type = string (Required)

      role_bindings block "list" (Required) {
        role = string (Required)
        condition_expression = string (Optional)
      }
    }
  }

  requester_justification_config block "list" (Required) {

    not_mandatory block "list" (Optional) {
    }

    unstructured block "list" (Optional) {
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
