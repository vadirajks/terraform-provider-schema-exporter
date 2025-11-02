resource "aws_workspacesweb_network_settings" "name" {
  security_group_ids = ['set', 'string'] (Required)
  subnet_ids = ['set', 'string'] (Required)
  vpc_id = string (Required)
  associated_portal_arns = ['list', 'string'] (Computed)
  network_settings_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
