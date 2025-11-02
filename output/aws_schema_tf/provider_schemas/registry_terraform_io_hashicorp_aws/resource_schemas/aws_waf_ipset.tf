resource "aws_waf_ipset" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  ip_set_descriptors block "set" (Optional) {
    type = string (Required)
    value = string (Required)
  }
}
