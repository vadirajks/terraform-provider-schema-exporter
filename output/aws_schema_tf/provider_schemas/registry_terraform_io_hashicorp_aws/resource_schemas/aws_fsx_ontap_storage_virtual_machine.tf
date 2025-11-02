resource "aws_fsx_ontap_storage_virtual_machine" "name" {
  file_system_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  endpoints = ['list', ['object', {'iscsi': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'management': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'nfs': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]], 'smb': ['list', ['object', {'dns_name': 'string', 'ip_addresses': ['set', 'string']}]]}]] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  root_volume_security_style = string (Optional)
  subtype = string (Computed)
  svm_admin_password = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uuid = string (Computed)

  active_directory_configuration block "list" (Optional) {
    netbios_name = string (Optional)

    self_managed_active_directory_configuration block "list" (Optional) {
      dns_ips = ['set', 'string'] (Required)
      domain_name = string (Required)
      password = string (Required)
      username = string (Required)
      file_system_administrators_group = string (Optional)
      organizational_unit_distinguished_name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
