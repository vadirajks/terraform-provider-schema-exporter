data "aws_cloudcontrolapi_resource" "name" {
  identifier = string (Required)
  type_name = string (Required)
  id = string (Optional, Computed)
  properties = string (Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  type_version_id = string (Optional)
}
