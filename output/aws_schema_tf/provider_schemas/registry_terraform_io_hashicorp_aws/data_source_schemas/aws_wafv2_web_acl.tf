data "aws_wafv2_web_acl" "name" {
  scope = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  resource_arn = string (Optional)
}
