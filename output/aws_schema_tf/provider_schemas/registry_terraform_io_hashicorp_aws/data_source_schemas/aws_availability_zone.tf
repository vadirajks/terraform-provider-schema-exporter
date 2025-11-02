data "aws_availability_zone" "name" {
  all_availability_zones = bool (Optional)
  group_long_name = string (Computed)
  group_name = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_suffix = string (Computed)
  network_border_group = string (Computed)
  opt_in_status = string (Computed)
  parent_zone_id = string (Computed)
  parent_zone_name = string (Computed)
  region = string (Optional, Computed)
  state = string (Optional, Computed)
  zone_id = string (Optional, Computed)
  zone_type = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
