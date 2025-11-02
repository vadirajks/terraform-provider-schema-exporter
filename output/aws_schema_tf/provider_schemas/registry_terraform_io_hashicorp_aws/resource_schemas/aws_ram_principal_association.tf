resource "aws_ram_principal_association" "name" {
  principal = string (Required)
  resource_share_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
