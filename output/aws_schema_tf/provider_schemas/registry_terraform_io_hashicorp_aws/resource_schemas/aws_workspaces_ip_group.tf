resource "aws_workspaces_ip_group" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  rules block "set" (Optional) {
    source = string (Required)
    description = string (Optional)
  }
}
