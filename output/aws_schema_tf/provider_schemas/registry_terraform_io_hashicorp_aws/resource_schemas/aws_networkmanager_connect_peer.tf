resource "aws_networkmanager_connect_peer" "name" {
  connect_attachment_id = string (Required)
  peer_address = string (Required)
  arn = string (Computed)
  configuration = ['list', ['object', {'bgp_configurations': ['list', ['object', {'core_network_address': 'string', 'core_network_asn': 'number', 'peer_address': 'string', 'peer_asn': 'number'}]], 'core_network_address': 'string', 'inside_cidr_blocks': ['set', 'string'], 'peer_address': 'string', 'protocol': 'string'}]] (Computed)
  connect_peer_id = string (Computed)
  core_network_address = string (Optional)
  core_network_id = string (Computed)
  created_at = string (Computed)
  edge_location = string (Computed)
  id = string (Optional, Computed)
  inside_cidr_blocks = ['list', 'string'] (Optional)
  state = string (Computed)
  subnet_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  bgp_options block "list" (Optional) {
    peer_asn = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
