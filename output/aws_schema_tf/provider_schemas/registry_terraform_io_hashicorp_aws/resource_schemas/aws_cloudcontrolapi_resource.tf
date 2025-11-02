resource "aws_cloudcontrolapi_resource" "name" {
  desired_state = string (Required)
  type_name = string (Required)
  id = string (Optional, Computed)
  properties = string (Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  schema = string (Optional, Computed)
  type_version_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
