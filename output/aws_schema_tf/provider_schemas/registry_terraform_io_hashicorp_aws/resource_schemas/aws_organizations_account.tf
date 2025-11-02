resource "aws_organizations_account" "name" {
  email = string (Required)
  name = string (Required)
  arn = string (Computed)
  close_on_deletion = bool (Optional)
  create_govcloud = bool (Optional)
  govcloud_id = string (Computed)
  iam_user_access_to_billing = string (Optional)
  id = string (Optional, Computed)
  joined_method = string (Computed)
  joined_timestamp = string (Computed)
  parent_id = string (Optional, Computed)
  role_name = string (Optional)
  state = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
