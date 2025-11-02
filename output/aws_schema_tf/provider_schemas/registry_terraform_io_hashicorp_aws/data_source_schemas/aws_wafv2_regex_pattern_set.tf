data "aws_wafv2_regex_pattern_set" "name" {
  name = string (Required)
  scope = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  regular_expression = ['set', ['object', {'regex_string': 'string'}]] (Computed)
}
