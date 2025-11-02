resource "aws_shield_protection" "name" {
  name = string (Required)
  resource_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
