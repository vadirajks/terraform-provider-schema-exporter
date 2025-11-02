resource "aws_s3control_access_grant" "name" {
  access_grants_location_id = string (Required)
  permission = string (Required)
  access_grant_arn = string (Computed)
  access_grant_id = string (Computed)
  account_id = string (Optional, Computed)
  grant_scope = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  s3_prefix_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  access_grants_location_configuration block "list" (Optional) {
    s3_sub_prefix = string (Optional)
  }

  grantee block "list" (Optional) {
    grantee_identifier = string (Required)
    grantee_type = string (Required)
  }
}
