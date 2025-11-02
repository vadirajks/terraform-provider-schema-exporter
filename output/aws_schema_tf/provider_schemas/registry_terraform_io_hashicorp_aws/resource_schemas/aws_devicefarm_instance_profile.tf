resource "aws_devicefarm_instance_profile" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  exclude_app_packages_from_cleanup = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  package_cleanup = bool (Optional)
  reboot_after_use = bool (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
