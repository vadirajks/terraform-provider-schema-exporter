resource "aws_ecs_tag" "name" {
  key = string (Required)
  resource_arn = string (Required)
  value = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
