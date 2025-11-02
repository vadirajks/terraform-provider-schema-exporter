resource "aws_vpc_ipam_organization_admin_account" "name" {
  delegated_admin_account_id = string (Required)
  arn = string (Computed)
  email = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  service_principal = string (Computed)
}
