data "aws_backup_selection" "name" {
  plan_id = string (Required)
  selection_id = string (Required)
  iam_role_arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  resources = ['set', 'string'] (Computed)
}
