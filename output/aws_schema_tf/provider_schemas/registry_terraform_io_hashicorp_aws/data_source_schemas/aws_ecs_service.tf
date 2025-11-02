data "aws_ecs_service" "name" {
  cluster_arn = string (Required)
  service_name = string (Required)
  arn = string (Computed)
  availability_zone_rebalancing = string (Computed)
  desired_count = number (Computed)
  id = string (Optional, Computed)
  launch_type = string (Computed)
  load_balancer = ['set', ['object', {'advanced_configuration': ['list', ['object', {'alternate_target_group_arn': 'string', 'production_listener_rule': 'string', 'role_arn': 'string', 'test_listener_rule': 'string'}]], 'container_name': 'string', 'container_port': 'number', 'elb_name': 'string', 'target_group_arn': 'string'}]] (Computed)
  region = string (Optional, Computed)
  scheduling_strategy = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  task_definition = string (Computed)
}
