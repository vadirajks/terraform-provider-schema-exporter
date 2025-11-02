resource "aws_dx_gateway_association" "name" {
  dx_gateway_id = string (Required)
  allowed_prefixes = ['set', 'string'] (Optional, Computed)
  associated_gateway_id = string (Optional, Computed)
  associated_gateway_owner_account_id = string (Optional, Computed)
  associated_gateway_type = string (Computed)
  dx_gateway_association_id = string (Computed)
  dx_gateway_owner_account_id = string (Computed)
  id = string (Optional, Computed)
  proposal_id = string (Optional)
  region = string (Optional, Computed)
  transit_gateway_attachment_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
