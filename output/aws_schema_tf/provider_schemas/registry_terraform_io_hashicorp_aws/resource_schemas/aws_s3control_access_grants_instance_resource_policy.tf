resource "aws_s3control_access_grants_instance_resource_policy" "name" {
  policy = string (Required)
  account_id = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
