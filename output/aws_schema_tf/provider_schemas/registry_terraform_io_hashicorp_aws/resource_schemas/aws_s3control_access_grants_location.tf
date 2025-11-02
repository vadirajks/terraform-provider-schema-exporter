resource "aws_s3control_access_grants_location" "name" {
  iam_role_arn = string (Required)
  location_scope = string (Required)
  access_grants_location_arn = string (Computed)
  access_grants_location_id = string (Computed)
  account_id = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
