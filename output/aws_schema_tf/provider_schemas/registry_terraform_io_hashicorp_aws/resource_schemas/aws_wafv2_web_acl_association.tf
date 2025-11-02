resource "aws_wafv2_web_acl_association" "name" {
  resource_arn = string (Required)
  web_acl_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
