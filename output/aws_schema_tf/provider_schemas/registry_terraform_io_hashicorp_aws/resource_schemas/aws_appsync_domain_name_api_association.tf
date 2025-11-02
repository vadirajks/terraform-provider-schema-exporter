resource "aws_appsync_domain_name_api_association" "name" {
  api_id = string (Required)
  domain_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
