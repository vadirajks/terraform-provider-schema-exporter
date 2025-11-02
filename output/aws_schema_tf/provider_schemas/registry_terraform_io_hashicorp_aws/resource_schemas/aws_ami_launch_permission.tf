resource "aws_ami_launch_permission" "name" {
  image_id = string (Required)
  account_id = string (Optional)
  group = string (Optional)
  id = string (Optional, Computed)
  organization_arn = string (Optional)
  organizational_unit_arn = string (Optional)
  region = string (Optional, Computed)
}
