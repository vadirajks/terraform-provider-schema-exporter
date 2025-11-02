resource "aws_appstream_directory_config" "name" {
  directory_name = string (Required)
  organizational_unit_distinguished_names = ['set', 'string'] (Required)
  created_time = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  certificate_based_auth_properties block "list" (Optional) {
    certificate_authority_arn = string (Optional)
    status = string (Optional)
  }

  service_account_credentials block "list" (Required) {
    account_name = string (Required)
    account_password = string (Required)
  }
}
