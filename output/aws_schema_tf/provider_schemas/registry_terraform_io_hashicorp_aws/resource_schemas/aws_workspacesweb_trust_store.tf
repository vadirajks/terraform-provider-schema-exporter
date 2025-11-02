resource "aws_workspacesweb_trust_store" "name" {
  associated_portal_arns = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  trust_store_arn = string (Computed)

  certificate block "set" (Optional) {
    body = string (Required)
    issuer = string (Computed)
    not_valid_after = string (Computed)
    not_valid_before = string (Computed)
    subject = string (Computed)
    thumbprint = string (Computed)
  }
}
