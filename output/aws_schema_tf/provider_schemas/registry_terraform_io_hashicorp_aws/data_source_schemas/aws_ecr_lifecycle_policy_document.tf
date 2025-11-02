data "aws_ecr_lifecycle_policy_document" "name" {
  json = string (Computed)

  rule block "list" (Optional) {
    priority = number (Required)
    description = string (Optional)

    action block "list" (Optional) {
      type = string (Required)
    }

    selection block "list" (Optional) {
      count_number = number (Required)
      count_type = string (Required)
      tag_status = string (Required)
      count_unit = string (Optional)
      tag_pattern_list = ['list', 'string'] (Optional)
      tag_prefix_list = ['list', 'string'] (Optional)
    }
  }
}
