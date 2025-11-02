data "aws_iam_principal_policy_simulation" "name" {
  action_names = ['set', 'string'] (Required)
  policy_source_arn = string (Required)
  additional_policies_json = ['set', 'string'] (Optional)
  all_allowed = bool (Computed)
  caller_arn = string (Optional)
  id = string (Computed)
  permissions_boundary_policies_json = ['set', 'string'] (Optional)
  resource_arns = ['set', 'string'] (Optional)
  resource_handling_option = string (Optional)
  resource_owner_account_id = string (Optional)
  resource_policy_json = string (Optional)
  results = ['set', ['object', {'action_name': 'string', 'allowed': 'bool', 'decision': 'string', 'decision_details': ['map', 'string'], 'matched_statements': ['set', ['object', {'source_policy_id': 'string', 'source_policy_type': 'string'}]], 'missing_context_keys': ['set', 'string'], 'resource_arn': 'string'}]] (Computed)

  context block "set" (Optional) {
    key = string (Required)
    type = string (Required)
    values = ['set', 'string'] (Required)
  }
}
