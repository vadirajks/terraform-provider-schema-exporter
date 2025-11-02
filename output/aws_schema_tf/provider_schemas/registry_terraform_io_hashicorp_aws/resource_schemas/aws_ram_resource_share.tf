resource "aws_ram_resource_share" "name" {
  name = string (Required)
  allow_external_principals = bool (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  permission_arns = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
