resource "aws_lightsail_bucket" "name" {
  bundle_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  availability_zone = string (Computed)
  created_at = string (Computed)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  support_code = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  url = string (Computed)
}
