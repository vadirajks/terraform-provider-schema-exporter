resource "google_secure_source_manager_branch_rule" "name" {
  branch_rule_id = string (Required)
  include_pattern = string (Required)
  location = string (Required)
  repository_id = string (Required)
  allow_stale_reviews = bool (Optional)
  create_time = string (Computed)
  disabled = bool (Optional)
  id = string (Optional, Computed)
  minimum_approvals_count = number (Optional)
  minimum_reviews_count = number (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  require_comments_resolved = bool (Optional)
  require_linear_history = bool (Optional)
  require_pull_request = bool (Optional)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
