resource "aws_redshift_hsm_configuration" "name" {
  description = string (Required)
  hsm_configuration_identifier = string (Required)
  hsm_ip_address = string (Required)
  hsm_partition_name = string (Required)
  hsm_partition_password = string (Required)
  hsm_server_public_certificate = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
