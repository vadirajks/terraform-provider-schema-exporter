data "aws_availability_zones" "name" {
  all_availability_zones = bool (Optional)
  exclude_names = ['set', 'string'] (Optional)
  exclude_zone_ids = ['set', 'string'] (Optional)
  group_names = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  names = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  state = string (Optional)
  zone_ids = ['list', 'string'] (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
