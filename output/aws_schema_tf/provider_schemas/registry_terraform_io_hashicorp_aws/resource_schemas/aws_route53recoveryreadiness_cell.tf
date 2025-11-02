resource "aws_route53recoveryreadiness_cell" "name" {
  cell_name = string (Required)
  arn = string (Computed)
  cells = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  parent_readiness_scopes = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
