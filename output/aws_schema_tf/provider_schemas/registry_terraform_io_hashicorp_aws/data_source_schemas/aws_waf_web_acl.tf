data "aws_waf_web_acl" "name" {
  name = string (Required)
  id = string (Optional, Computed)
}
