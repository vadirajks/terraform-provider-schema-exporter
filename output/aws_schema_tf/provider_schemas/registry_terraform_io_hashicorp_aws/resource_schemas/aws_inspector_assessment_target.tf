resource "aws_inspector_assessment_target" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_group_arn = string (Optional)
}
