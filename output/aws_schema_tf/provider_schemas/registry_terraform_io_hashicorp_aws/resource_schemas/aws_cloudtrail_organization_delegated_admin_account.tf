resource "aws_cloudtrail_organization_delegated_admin_account" "name" {
  account_id = string (Required)
  arn = string (Computed)
  email = string (Computed)
  id = string (Computed)
  name = string (Computed)
  service_principal = string (Computed)
}
