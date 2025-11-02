data "aws_prometheus_workspaces" "name" {
  alias_prefix = string (Optional)
  aliases = ['list', 'string'] (Computed)
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  workspace_ids = ['list', 'string'] (Computed)
}
