resource "aws_backup_selection" "name" {
  iam_role_arn = string (Required)
  name = string (Required)
  plan_id = string (Required)
  id = string (Optional, Computed)
  not_resources = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  resources = ['set', 'string'] (Optional)

  condition block "set" (Optional) {

    string_equals block "set" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    string_like block "set" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    string_not_equals block "set" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    string_not_like block "set" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }

  selection_tag block "set" (Optional) {
    key = string (Required)
    type = string (Required)
    value = string (Required)
  }
}
