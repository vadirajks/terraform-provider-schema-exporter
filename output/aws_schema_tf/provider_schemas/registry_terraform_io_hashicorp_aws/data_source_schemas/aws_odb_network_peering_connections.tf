data "aws_odb_network_peering_connections" "name" {
  region = string (Optional, Computed)

  odb_peering_connections block "list" (Optional) {
  }
}
