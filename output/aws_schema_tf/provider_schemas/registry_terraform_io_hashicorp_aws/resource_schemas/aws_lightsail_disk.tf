resource "aws_lightsail_disk" "name" {
  availability_zone = string (Required)
  name = string (Required)
  size_in_gb = number (Required)
  arn = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  support_code = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
