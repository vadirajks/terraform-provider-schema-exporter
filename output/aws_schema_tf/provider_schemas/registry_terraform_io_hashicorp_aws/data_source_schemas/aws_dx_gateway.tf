data "aws_dx_gateway" "name" {
  name = string (Required)
  amazon_side_asn = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_account_id = string (Computed)
}
