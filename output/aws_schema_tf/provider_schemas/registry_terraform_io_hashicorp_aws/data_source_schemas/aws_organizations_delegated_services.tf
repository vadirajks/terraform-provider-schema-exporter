data "aws_organizations_delegated_services" "name" {
  account_id = string (Required)
  delegated_services = ['set', ['object', {'delegation_enabled_date': 'string', 'service_principal': 'string'}]] (Computed)
  id = string (Optional, Computed)
}
