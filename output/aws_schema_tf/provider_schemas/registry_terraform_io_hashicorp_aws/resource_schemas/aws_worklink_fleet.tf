resource "aws_worklink_fleet" "name" {
  name = string (Required)
  arn = string (Computed)
  audit_stream_arn = string (Optional)
  company_code = string (Computed)
  created_time = string (Computed)
  device_ca_certificate = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  optimize_for_end_user_location = bool (Optional)

  identity_provider block "list"  (Optional){
    saml_metadata = string (Required)
    type = string (Required)
  }

  network block "list"  (Optional){
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
  }
}
