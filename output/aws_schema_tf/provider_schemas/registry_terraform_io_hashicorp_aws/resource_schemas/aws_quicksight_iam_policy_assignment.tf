resource "aws_quicksight_iam_policy_assignment" "name" {
  assignment_name = string (Required)
  assignment_status = string (Required)
  assignment_id = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Computed)
  namespace = string (Optional, Computed)
  policy_arn = string (Optional)
  region = string (Optional, Computed)

  identities block "list" (Optional) {
    group = ['set', 'string'] (Optional)
    user = ['set', 'string'] (Optional)
  }
}
