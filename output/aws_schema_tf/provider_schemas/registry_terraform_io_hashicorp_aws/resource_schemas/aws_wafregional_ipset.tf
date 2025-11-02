resource "aws_wafregional_ipset" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  ip_set_descriptor block "set" (Optional) {
    type = string (Required)
    value = string (Required)
  }
}
