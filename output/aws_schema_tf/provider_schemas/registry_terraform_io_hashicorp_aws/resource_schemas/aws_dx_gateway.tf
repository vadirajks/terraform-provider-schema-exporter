resource "aws_dx_gateway" "name" {
  amazon_side_asn = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  owner_account_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
