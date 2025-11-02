data "aws_ssoadmin_application" "name" {
  application_arn = string (Required)
  application_account = string (Computed)
  application_provider_arn = string (Computed)
  description = string (Computed)
  id = string (Computed)
  instance_arn = string (Computed)
  name = string (Computed)
  portal_options = ['list', ['object', {'sign_in_options': ['list', ['object', {'application_url': 'string', 'origin': 'string'}]], 'visibility': 'string'}]] (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
