resource "aws_vpc_peering_connection" "name" {
  peer_vpc_id = string (Required)
  vpc_id = string (Required)
  accept_status = string (Computed)
  auto_accept = bool (Optional)
  id = string (Optional, Computed)
  peer_owner_id = string (Optional, Computed)
  peer_region = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  accepter block "list" (Optional) {
    allow_remote_vpc_dns_resolution = bool (Optional)
  }

  requester block "list" (Optional) {
    allow_remote_vpc_dns_resolution = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
