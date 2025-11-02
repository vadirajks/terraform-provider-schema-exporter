data "aws_waf_ipset" "name" {
  name = string (Required)
  id = string (Optional, Computed)
}
