data "aws_vpc_ipams" "name" {
  ipam_ids = ['list', 'string'] (Optional)
  ipams = ['list', ['object', {'arn': 'string', 'default_resource_discovery_association_id': 'string', 'default_resource_discovery_id': 'string', 'description': 'string', 'enable_private_gua': 'bool', 'id': 'string', 'ipam_region': 'string', 'metered_account': 'string', 'operating_regions': ['list', ['object', {'region_name': 'string'}]], 'owner_id': 'string', 'private_default_scope_id': 'string', 'public_default_scope_id': 'string', 'resource_discovery_association_count': 'number', 'scope_count': 'number', 'state': 'string', 'state_message': 'string', 'tier': 'string'}]] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
