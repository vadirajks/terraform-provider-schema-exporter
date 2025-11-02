resource "aws_waf_regex_pattern_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  regex_pattern_strings = ['set', 'string'] (Optional)
}
