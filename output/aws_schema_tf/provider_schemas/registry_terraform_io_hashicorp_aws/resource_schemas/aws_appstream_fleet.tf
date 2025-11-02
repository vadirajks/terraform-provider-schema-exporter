resource "aws_appstream_fleet" "name" {
  instance_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional, Computed)
  disconnect_timeout_in_seconds = number (Optional, Computed)
  display_name = string (Optional, Computed)
  enable_default_internet_access = bool (Optional, Computed)
  fleet_type = string (Optional, Computed)
  iam_role_arn = string (Optional, Computed)
  id = string (Optional, Computed)
  idle_disconnect_timeout_in_seconds = number (Optional)
  image_arn = string (Optional, Computed)
  image_name = string (Optional, Computed)
  max_sessions_per_instance = number (Optional)
  max_user_duration_in_seconds = number (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  stream_view = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  compute_capacity block "list" (Required) {
    available = number (Computed)
    desired_instances = number (Optional)
    desired_sessions = number (Optional)
    in_use = number (Computed)
    running = number (Computed)
  }

  domain_join_info block "list" (Optional) {
    directory_name = string (Optional, Computed)
    organizational_unit_distinguished_name = string (Optional, Computed)
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['list', 'string'] (Optional, Computed)
    subnet_ids = ['list', 'string'] (Optional, Computed)
  }
}
