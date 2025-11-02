resource "aws_wafv2_regex_pattern_set" "name" {
  scope = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  lock_token = string (Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  regular_expression block "set" (Optional) {
    regex_string = string (Required)
  }
}
