resource "aws_organizations_delegated_administrator" "name" {
  account_id = string (Required)
  service_principal = string (Required)
  arn = string (Computed)
  delegation_enabled_date = string (Computed)
  email = string (Computed)
  id = string (Optional, Computed)
  joined_method = string (Computed)
  joined_timestamp = string (Computed)
  name = string (Computed)
  status = string (Computed)
}
