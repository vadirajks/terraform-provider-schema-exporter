resource "aws_dx_gateway_association_proposal" "name" {
  associated_gateway_id = string (Required)
  dx_gateway_id = string (Required)
  dx_gateway_owner_account_id = string (Required)
  allowed_prefixes = ['set', 'string'] (Optional, Computed)
  associated_gateway_owner_account_id = string (Computed)
  associated_gateway_type = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
