resource "aws_wafregional_web_acl_association" "name" {
  resource_arn = string (Required)
  web_acl_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
