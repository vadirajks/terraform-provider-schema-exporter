resource "aws_datazone_domain" "name" {
  domain_execution_role = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  domain_version = string (Optional, Computed)
  id = string (Computed)
  kms_key_identifier = string (Optional)
  portal_url = string (Computed)
  region = string (Optional, Computed)
  service_role = string (Optional)
  skip_deletion_check = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  single_sign_on block "list" (Optional) {
    type = string (Optional, Computed)
    user_assignment = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
