resource "aws_gamelift_fleet" "name" {
  ec2_instance_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  build_arn = string (Computed)
  build_id = string (Optional)
  description = string (Optional)
  fleet_type = string (Optional)
  id = string (Optional, Computed)
  instance_role_arn = string (Optional)
  log_paths = ['list', 'string'] (Computed)
  metric_groups = ['list', 'string'] (Optional, Computed)
  new_game_session_protection_policy = string (Optional)
  operating_system = string (Computed)
  region = string (Optional, Computed)
  script_arn = string (Computed)
  script_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  certificate_configuration block "list" (Optional) {
    certificate_type = string (Optional)
  }

  ec2_inbound_permission block "set" (Optional) {
    from_port = number (Required)
    ip_range = string (Required)
    protocol = string (Required)
    to_port = number (Required)
  }

  resource_creation_limit_policy block "list" (Optional) {
    new_game_sessions_per_creator = number (Optional)
    policy_period_in_minutes = number (Optional)
  }

  runtime_configuration block "list" (Optional) {
    game_session_activation_timeout_seconds = number (Optional)
    max_concurrent_game_session_activations = number (Optional)

    server_process block "list" (Optional) {
      concurrent_executions = number (Required)
      launch_path = string (Required)
      parameters = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
