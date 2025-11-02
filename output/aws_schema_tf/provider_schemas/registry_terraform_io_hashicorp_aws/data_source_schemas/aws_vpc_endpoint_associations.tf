data "aws_vpc_endpoint_associations" "name" {
  vpc_endpoint_id = string (Required)
  associations = ['list', ['object', {'associated_resource_accessibility': 'string', 'associated_resource_arn': 'string', 'dns_entry': ['list', ['object', {'dns_name': 'string', 'hosted_zone_id': 'string'}]], 'id': 'string', 'private_dns_entry': ['list', ['object', {'dns_name': 'string', 'hosted_zone_id': 'string'}]], 'resource_configuration_group_arn': 'string', 'service_network_arn': 'string', 'service_network_name': 'string', 'tags': ['map', 'string']}]] (Computed)
  region = string (Optional, Computed)
}
