resource "aws_servicecatalog_principal_portfolio_association" "name" {
  portfolio_id = string (Required)
  principal_arn = string (Required)
  accept_language = string (Optional)
  id = string (Optional, Computed)
  principal_type = string (Optional)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
