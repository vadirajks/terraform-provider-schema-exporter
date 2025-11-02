resource "aws_datasync_location_hdfs" "name" {
  agent_arns = ['set', 'string'] (Required)
  arn = string (Computed)
  authentication_type = string (Optional)
  block_size = number (Optional)
  id = string (Optional, Computed)
  kerberos_keytab = string (Optional)
  kerberos_keytab_base64 = string (Optional)
  kerberos_krb5_conf = string (Optional)
  kerberos_krb5_conf_base64 = string (Optional)
  kerberos_principal = string (Optional)
  kms_key_provider_uri = string (Optional)
  region = string (Optional, Computed)
  replication_factor = number (Optional)
  simple_user = string (Optional)
  subdirectory = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  name_node block "set" (Required) {
    hostname = string (Required)
    port = number (Required)
  }

  qop_configuration block "list" (Optional) {
    data_transfer_protection = string (Optional, Computed)
    rpc_protection = string (Optional, Computed)
  }
}
