resource "aws_ssoadmin_application" "name" {
  application_provider_arn = string (Required)
  instance_arn = string (Required)
  name = string (Required)
  application_account = string (Computed)
  application_arn = string (Computed)
  arn = string (Computed)
  client_token = string (Optional)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  portal_options block "list" (Optional) {
    visibility = string (Optional, Computed)

    sign_in_options block "list" (Optional) {
      origin = string (Required)
      application_url = string (Optional)
    }
  }
}
