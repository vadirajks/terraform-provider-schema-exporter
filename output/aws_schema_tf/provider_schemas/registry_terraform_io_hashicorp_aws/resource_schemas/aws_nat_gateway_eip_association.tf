resource "aws_nat_gateway_eip_association" "name" {
  allocation_id = string (Required)
  nat_gateway_id = string (Required)
  association_id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
