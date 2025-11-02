resource "aws_guardduty_filter" "name" {
  action = string (Required)
  detector_id = string (Required)
  name = string (Required)
  rank = number (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  finding_criteria block "list" (Required) {

    criterion block "set" (Required) {
      field = string (Required)
      equals = ['list', 'string'] (Optional)
      greater_than = string (Optional)
      greater_than_or_equal = string (Optional)
      less_than = string (Optional)
      less_than_or_equal = string (Optional)
      not_equals = ['list', 'string'] (Optional)
    }
  }
}
