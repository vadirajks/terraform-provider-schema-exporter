resource "aws_budgets_budget_action" "name" {
  action_type = string (Required)
  approval_model = string (Required)
  budget_name = string (Required)
  execution_role_arn = string (Required)
  notification_type = string (Required)
  account_id = string (Optional, Computed)
  action_id = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  action_threshold block "list" (Required) {
    action_threshold_type = string (Required)
    action_threshold_value = number (Required)
  }

  definition block "list" (Required) {

    iam_action_definition block "list" (Optional) {
      policy_arn = string (Required)
      groups = ['set', 'string'] (Optional)
      roles = ['set', 'string'] (Optional)
      users = ['set', 'string'] (Optional)
    }

    scp_action_definition block "list" (Optional) {
      policy_id = string (Required)
      target_ids = ['set', 'string'] (Required)
    }

    ssm_action_definition block "list" (Optional) {
      action_sub_type = string (Required)
      instance_ids = ['set', 'string'] (Required)
      region = string (Required)
    }
  }

  subscriber block "set" (Required) {
    address = string (Required)
    subscription_type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
