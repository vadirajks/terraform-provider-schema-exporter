resource "aws_detective_organization_configuration" "name" {
  auto_enable = bool (Required)
  graph_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
