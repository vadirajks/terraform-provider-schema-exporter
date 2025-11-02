resource "aws_s3control_access_grants_instance" "name" {
  access_grants_instance_arn = string (Computed)
  access_grants_instance_id = string (Computed)
  account_id = string (Optional, Computed)
  id = string (Computed)
  identity_center_application_arn = string (Computed)
  identity_center_arn = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
