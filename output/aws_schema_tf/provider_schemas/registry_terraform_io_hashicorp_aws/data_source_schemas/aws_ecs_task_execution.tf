data "aws_ecs_task_execution" "name" {
  cluster = string (Required)
  task_definition = string (Required)
  client_token = string (Optional)
  desired_count = number (Optional)
  enable_ecs_managed_tags = bool (Optional)
  enable_execute_command = bool (Optional)
  group = string (Optional)
  id = string (Optional, Computed)
  launch_type = string (Optional)
  platform_version = string (Optional)
  propagate_tags = string (Optional)
  reference_id = string (Optional)
  region = string (Optional, Computed)
  started_by = string (Optional)
  tags = ['map', 'string'] (Optional)
  task_arns = ['list', 'string'] (Computed)

  capacity_provider_strategy block "set" (Optional) {
    capacity_provider = string (Required)
    base = number (Optional)
    weight = number (Optional)
  }

  network_configuration block "list" (Optional) {
    subnets = ['set', 'string'] (Required)
    assign_public_ip = bool (Optional)
    security_groups = ['set', 'string'] (Optional)
  }

  overrides block "list" (Optional) {
    cpu = string (Optional)
    execution_role_arn = string (Optional)
    memory = string (Optional)
    task_role_arn = string (Optional)

    container_overrides block "list" (Optional) {
      name = string (Required)
      command = ['list', 'string'] (Optional)
      cpu = number (Optional)
      memory = number (Optional)
      memory_reservation = number (Optional)

      environment block "set" (Optional) {
        key = string (Required)
        value = string (Required)
      }

      resource_requirements block "set" (Optional) {
        type = string (Required)
        value = string (Required)
      }
    }
  }

  placement_constraints block "set" (Optional) {
    type = string (Required)
    expression = string (Optional)
  }

  placement_strategy block "list" (Optional) {
    type = string (Required)
    field = string (Optional)
  }
}
