resource "aws_s3control_access_point_policy" "name" {
  access_point_arn = string (Required)
  policy = string (Required)
  has_public_access_policy = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
