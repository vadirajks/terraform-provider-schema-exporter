resource "aws_grafana_role_association" "name" {
  role = string (Required)
  workspace_id = string (Required)
  group_ids = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  user_ids = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
