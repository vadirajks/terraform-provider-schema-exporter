resource "aws_workspaces_connection_alias" "name" {
  connection_string = string (Required)
  id = string (Computed)
  owner_account_id = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
