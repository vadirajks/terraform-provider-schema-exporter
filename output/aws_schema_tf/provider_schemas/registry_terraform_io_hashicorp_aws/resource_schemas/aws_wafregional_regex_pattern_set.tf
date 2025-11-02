resource "aws_wafregional_regex_pattern_set" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  regex_pattern_strings = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
}
