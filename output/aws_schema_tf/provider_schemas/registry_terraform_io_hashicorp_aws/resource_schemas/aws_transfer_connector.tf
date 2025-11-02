resource "aws_transfer_connector" "name" {
  access_role = string (Required)
  url = string (Required)
  arn = string (Computed)
  connector_id = string (Computed)
  id = string (Optional, Computed)
  logging_role = string (Optional)
  region = string (Optional, Computed)
  security_policy_name = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  as2_config block "list" (Optional) {
    compression = string (Required)
    encryption_algorithm = string (Required)
    local_profile_id = string (Required)
    mdn_response = string (Required)
    partner_profile_id = string (Required)
    signing_algorithm = string (Required)
    mdn_signing_algorithm = string (Optional)
    message_subject = string (Optional)
  }

  sftp_config block "list" (Optional) {
    trusted_host_keys = ['set', 'string'] (Optional)
    user_secret_id = string (Optional)
  }
}
