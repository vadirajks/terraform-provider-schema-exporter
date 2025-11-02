resource "aws_codebuild_webhook" "name" {
  project_name = string (Required)
  branch_filter = string (Optional)
  build_type = string (Optional)
  id = string (Optional, Computed)
  manual_creation = bool (Optional)
  payload_url = string (Computed)
  region = string (Optional, Computed)
  secret = string (Computed)
  url = string (Computed)

  filter_group block "set" (Optional) {

    filter block "list" (Optional) {
      pattern = string (Required)
      type = string (Required)
      exclude_matched_pattern = bool (Optional)
    }
  }

  pull_request_build_policy block "list" (Optional) {
    requires_comment_approval = string (Required)
    approver_roles = ['set', 'string'] (Optional, Computed)
  }

  scope_configuration block "list" (Optional) {
    name = string (Required)
    scope = string (Required)
    domain = string (Optional)
  }
}
