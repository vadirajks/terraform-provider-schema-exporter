resource "aws_waf_size_constraint_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  size_constraints block "set" (Optional) {
    comparison_operator = string (Required)
    size = number (Required)
    text_transformation = string (Required)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
