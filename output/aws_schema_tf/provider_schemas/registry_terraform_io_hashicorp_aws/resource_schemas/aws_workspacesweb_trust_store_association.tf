resource "aws_workspacesweb_trust_store_association" "name" {
  portal_arn = string (Required)
  trust_store_arn = string (Required)
  region = string (Optional, Computed)
}
