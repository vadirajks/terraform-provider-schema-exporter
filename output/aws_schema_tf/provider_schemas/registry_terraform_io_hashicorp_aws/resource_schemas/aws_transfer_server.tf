resource "aws_transfer_server" "name" {
  arn = string (Computed)
  certificate = string (Optional)
  directory_id = string (Optional)
  domain = string (Optional)
  endpoint = string (Computed)
  endpoint_type = string (Optional)
  force_destroy = bool (Optional)
  function = string (Optional)
  host_key = string (Optional)
  host_key_fingerprint = string (Computed)
  id = string (Optional, Computed)
  identity_provider_type = string (Optional)
  invocation_role = string (Optional)
  logging_role = string (Optional)
  post_authentication_login_banner = string (Optional)
  pre_authentication_login_banner = string (Optional)
  protocols = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  security_policy_name = string (Optional)
  sftp_authentication_methods = string (Optional, Computed)
  structured_log_destinations = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  url = string (Optional)

  endpoint_details block "list" (Optional) {
    address_allocation_ids = ['set', 'string'] (Optional)
    security_group_ids = ['set', 'string'] (Optional, Computed)
    subnet_ids = ['set', 'string'] (Optional)
    vpc_endpoint_id = string (Optional, Computed)
    vpc_id = string (Optional)
  }

  protocol_details block "list" (Optional) {
    as2_transports = ['set', 'string'] (Optional, Computed)
    passive_ip = string (Optional, Computed)
    set_stat_option = string (Optional, Computed)
    tls_session_resumption_mode = string (Optional, Computed)
  }

  s3_storage_options block "list" (Optional) {
    directory_listing_optimization = string (Optional, Computed)
  }

  workflow_details block "list" (Optional) {

    on_partial_upload block "list" (Optional) {
      execution_role = string (Required)
      workflow_id = string (Required)
    }

    on_upload block "list" (Optional) {
      execution_role = string (Required)
      workflow_id = string (Required)
    }
  }
}
