data "aws_transfer_connector" "name" {
  id = string (Required)
  access_role = string (Computed)
  arn = string (Computed)
  as2_config = ['list', ['object', {'basic_auth_secret_id': 'string', 'compression': 'string', 'encryption_algorithm': 'string', 'local_profile_id': 'string', 'mdn_response': 'string', 'mdn_signing_algorithm': 'string', 'message_subject': 'string', 'partner_profile_id': 'string', 'singing_algorithm': 'string'}]] (Computed)
  logging_role = string (Computed)
  region = string (Optional, Computed)
  security_policy_name = string (Computed)
  service_managed_egress_ip_addresses = ['list', 'string'] (Computed)
  sftp_config = ['list', ['object', {'trusted_host_keys': ['list', 'string'], 'user_secret_id': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)
  url = string (Computed)
}
