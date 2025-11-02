data "aws_ecs_container_definition" "name" {
  container_name = string (Required)
  task_definition = string (Required)
  cpu = number (Computed)
  disable_networking = bool (Computed)
  docker_labels = ['map', 'string'] (Computed)
  environment = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  image = string (Computed)
  image_digest = string (Computed)
  memory = number (Computed)
  memory_reservation = number (Computed)
  region = string (Optional, Computed)
}
