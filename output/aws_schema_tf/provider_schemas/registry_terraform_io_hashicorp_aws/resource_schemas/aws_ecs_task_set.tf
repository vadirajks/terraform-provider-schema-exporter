resource "aws_ecs_task_set" "name" {
  cluster = string (Required)
  service = string (Required)
  task_definition = string (Required)
  arn = string (Computed)
  external_id = string (Optional, Computed)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  launch_type = string (Optional, Computed)
  platform_version = string (Optional, Computed)
  region = string (Optional, Computed)
  stability_status = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  task_set_id = string (Computed)
  wait_until_stable = bool (Optional)
  wait_until_stable_timeout = string (Optional)

  capacity_provider_strategy block "set" (Optional) {
    capacity_provider = string (Required)
    weight = number (Required)
    base = number (Optional)
  }

  load_balancer block "set" (Optional) {
    container_name = string (Required)
    container_port = number (Optional)
    load_balancer_name = string (Optional)
    target_group_arn = string (Optional)
  }

  network_configuration block "list" (Optional) {
    subnets = ['set', 'string'] (Required)
    assign_public_ip = bool (Optional)
    security_groups = ['set', 'string'] (Optional)
  }

  scale block "list" (Optional) {
    unit = string (Optional)
    value = number (Optional)
  }

  service_registries block "list" (Optional) {
    registry_arn = string (Required)
    container_name = string (Optional)
    container_port = number (Optional)
    port = number (Optional)
  }
}
