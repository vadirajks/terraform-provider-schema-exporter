resource "aws_accessanalyzer_archive_rule" "name" {
  analyzer_name = string (Required)
  rule_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  filter block "set" (Required) {
    criteria = string (Required)
    contains = ['list', 'string'] (Optional, Computed)
    eq = ['list', 'string'] (Optional, Computed)
    exists = string (Optional, Computed)
    neq = ['list', 'string'] (Optional, Computed)
  }
}
