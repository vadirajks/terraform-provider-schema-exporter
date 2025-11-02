resource "aws_s3control_object_lambda_access_point_policy" "name" {
  name = string (Required)
  policy = string (Required)
  account_id = string (Optional, Computed)
  has_public_access_policy = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
