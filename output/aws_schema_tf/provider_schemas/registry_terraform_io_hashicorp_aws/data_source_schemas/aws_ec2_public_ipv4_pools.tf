data "aws_ec2_public_ipv4_pools" "name" {
  id = string (Optional, Computed)
  pool_ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
