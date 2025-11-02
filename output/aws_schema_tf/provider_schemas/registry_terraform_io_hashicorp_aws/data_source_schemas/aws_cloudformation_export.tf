data "aws_cloudformation_export" "name" {
  name = string (Required)
  exporting_stack_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  value = string (Computed)
}
