resource "aws_vpc_block_public_access_options" "name" {
  internet_gateway_block_mode = string (Required)
  aws_account_id = string (Computed)
  aws_region = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
