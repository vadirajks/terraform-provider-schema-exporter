resource "aws_gamelift_game_server_group" "name" {
  game_server_group_name = string (Required)
  max_size = number (Required)
  min_size = number (Required)
  role_arn = string (Required)
  arn = string (Computed)
  auto_scaling_group_arn = string (Computed)
  balancing_strategy = string (Optional, Computed)
  game_server_protection_policy = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_subnets = ['set', 'string'] (Optional)

  auto_scaling_policy block "list" (Optional) {
    estimated_instance_warmup = number (Optional, Computed)

    target_tracking_configuration block "list" (Required) {
      target_value = number (Required)
    }
  }

  instance_definition block "set" (Required) {
    instance_type = string (Required)
    weighted_capacity = string (Optional)
  }

  launch_template block "list" (Required) {
    id = string (Optional, Computed)
    name = string (Optional, Computed)
    version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
