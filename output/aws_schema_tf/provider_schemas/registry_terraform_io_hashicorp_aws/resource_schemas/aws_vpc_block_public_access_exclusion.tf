resource "aws_vpc_block_public_access_exclusion" "name" {
  internet_gateway_exclusion_mode = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)
  resource_arn = string (Computed)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
