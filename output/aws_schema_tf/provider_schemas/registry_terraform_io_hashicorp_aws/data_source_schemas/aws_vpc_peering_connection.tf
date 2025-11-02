data "aws_vpc_peering_connection" "name" {
  accepter = ['map', 'bool'] (Computed)
  cidr_block = string (Optional, Computed)
  cidr_block_set = ['list', ['object', {'cidr_block': 'string'}]] (Computed)
  id = string (Optional, Computed)
  ipv6_cidr_block_set = ['list', ['object', {'ipv6_cidr_block': 'string'}]] (Computed)
  owner_id = string (Optional, Computed)
  peer_cidr_block = string (Optional, Computed)
  peer_cidr_block_set = ['list', ['object', {'cidr_block': 'string'}]] (Computed)
  peer_ipv6_cidr_block_set = ['list', ['object', {'ipv6_cidr_block': 'string'}]] (Computed)
  peer_owner_id = string (Optional, Computed)
  peer_region = string (Computed)
  peer_vpc_id = string (Optional, Computed)
  region = string (Computed)
  requester = ['map', 'bool'] (Computed)
  requester_region = string (Computed)
  status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  vpc_id = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
