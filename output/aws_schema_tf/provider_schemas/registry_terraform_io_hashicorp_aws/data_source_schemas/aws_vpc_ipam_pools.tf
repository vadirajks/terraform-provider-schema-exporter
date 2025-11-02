data "aws_vpc_ipam_pools" "name" {
  id = string (Optional, Computed)
  ipam_pools = ['set', ['object', {'address_family': 'string', 'allocation_default_netmask_length': 'number', 'allocation_max_netmask_length': 'number', 'allocation_min_netmask_length': 'number', 'allocation_resource_tags': ['map', 'string'], 'arn': 'string', 'auto_import': 'bool', 'aws_service': 'string', 'description': 'string', 'id': 'string', 'ipam_scope_id': 'string', 'ipam_scope_type': 'string', 'locale': 'string', 'pool_depth': 'number', 'publicly_advertisable': 'bool', 'source_ipam_pool_id': 'string', 'state': 'string', 'tags': ['map', 'string']}]] (Computed)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
