data "aws_iam_policy_document" "name" {
  id = string (Optional, Computed)
  json = string (Computed)
  minified_json = string (Computed)
  override_json = string (Optional)
  override_policy_documents = ['list', 'string'] (Optional)
  policy_id = string (Optional)
  source_json = string (Optional)
  source_policy_documents = ['list', 'string'] (Optional)
  version = string (Optional)

  statement block "list" (Optional) {
    actions = ['set', 'string'] (Optional)
    effect = string (Optional)
    not_actions = ['set', 'string'] (Optional)
    not_resources = ['set', 'string'] (Optional)
    resources = ['set', 'string'] (Optional)
    sid = string (Optional)

    condition block "set" (Optional) {
      test = string (Required)
      values = ['list', 'string'] (Required)
      variable = string (Required)
    }

    not_principals block "set" (Optional) {
      identifiers = ['set', 'string'] (Required)
      type = string (Required)
    }

    principals block "set" (Optional) {
      identifiers = ['set', 'string'] (Required)
      type = string (Required)
    }
  }
}
