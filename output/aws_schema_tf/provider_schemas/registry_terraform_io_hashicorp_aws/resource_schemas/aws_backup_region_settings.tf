resource "aws_backup_region_settings" "name" {
  resource_type_opt_in_preference = ['map', 'bool'] (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_type_management_preference = ['map', 'bool'] (Optional, Computed)
}
