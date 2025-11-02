resource "aws_servicecatalog_portfolio_share" "name" {
  portfolio_id = string (Required)
  principal_id = string (Required)
  type = string (Required)
  accept_language = string (Optional)
  accepted = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  share_principals = bool (Optional)
  share_tag_options = bool (Optional)
  wait_for_acceptance = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
