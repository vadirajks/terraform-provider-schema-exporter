data "aws_wafregional_ipset" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
