data "aws_ecs_cluster" "name" {
  cluster_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  pending_tasks_count = number (Computed)
  region = string (Optional, Computed)
  registered_container_instances_count = number (Computed)
  running_tasks_count = number (Computed)
  service_connect_defaults = ['list', ['object', {'namespace': 'string'}]] (Computed)
  setting = ['set', ['object', {'name': 'string', 'value': 'string'}]] (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
