resource "aws_ram_resource_association" "name" {
  resource_arn = string (Required)
  resource_share_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
