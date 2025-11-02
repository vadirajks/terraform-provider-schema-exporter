data "aws_wafregional_web_acl" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
