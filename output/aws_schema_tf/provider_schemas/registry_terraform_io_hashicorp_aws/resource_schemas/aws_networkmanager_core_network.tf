resource "aws_networkmanager_core_network" "name" {
  global_network_id = string (Required)
  arn = string (Computed)
  base_policy_document = string (Optional)
  base_policy_regions = ['set', 'string'] (Optional)
  create_base_policy = bool (Optional)
  created_at = string (Computed)
  description = string (Optional)
  edges = ['list', ['object', {'asn': 'number', 'edge_location': 'string', 'inside_cidr_blocks': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)
  segments = ['list', ['object', {'edge_locations': ['list', 'string'], 'name': 'string', 'shared_segments': ['list', 'string']}]] (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
