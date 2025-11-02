data "aws_fsx_ontap_storage_virtual_machine" "name" {
  active_directory_configuration = ['list', ['object', {'netbios_name': 'string', 'self_managed_active_directory_configuration': ['list', ['object', {'dns_ips': ['set', 'string'], 'domain_name': 'string', 'file_system_administrators_group': 'string', 'organizational_unit_distinguished_name': 'string', 'username': 'string'}]]}]] (Computed)
  arn = string (Computed)
  creation_time = string (Computed)
  endpoints = ['list', ['object', {'iscsi': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'management': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'nfs': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'smb': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]]}]] (Computed)
  file_system_id = string (Computed)
  id = string (Optional, Computed)
  lifecycle_status = string (Computed)
  lifecycle_transition_reason = ['set', ['object', {'message': 'string'}]] (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  subtype = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  uuid = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
