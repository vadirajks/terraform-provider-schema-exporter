resource "aws_datazone_user_profile" "name" {
  domain_identifier = string (Required)
  user_identifier = string (Required)
  details = ['list', ['object', {'iam': ['list', ['object', {'arn': 'string'}]], 'sso': ['list', ['object', {'first_name': 'string', 'last_name': 'string', 'user_name': 'string'}]]}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Optional, Computed)
  type = string (Computed)
  user_type = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
