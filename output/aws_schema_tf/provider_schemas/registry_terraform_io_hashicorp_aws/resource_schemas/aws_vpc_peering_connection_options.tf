resource "aws_vpc_peering_connection_options" "name" {
  vpc_peering_connection_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  accepter block "list" (Optional) {
    allow_remote_vpc_dns_resolution = bool (Optional)
  }

  requester block "list" (Optional) {
    allow_remote_vpc_dns_resolution = bool (Optional)
  }
}
