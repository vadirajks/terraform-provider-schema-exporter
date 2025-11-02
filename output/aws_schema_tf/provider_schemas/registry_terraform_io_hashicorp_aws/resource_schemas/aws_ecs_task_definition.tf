resource "aws_ecs_task_definition" "name" {
  container_definitions = string (Required)
  family = string (Required)
  arn = string (Computed)
  arn_without_revision = string (Computed)
  cpu = string (Optional)
  enable_fault_injection = bool (Optional, Computed)
  execution_role_arn = string (Optional)
  id = string (Optional, Computed)
  ipc_mode = string (Optional)
  memory = string (Optional)
  network_mode = string (Optional, Computed)
  pid_mode = string (Optional)
  region = string (Optional, Computed)
  requires_compatibilities = ['set', 'string'] (Optional)
  revision = number (Computed)
  skip_destroy = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  task_role_arn = string (Optional)
  track_latest = bool (Optional)

  ephemeral_storage block "list" (Optional) {
    size_in_gib = number (Required)
  }

  placement_constraints block "set" (Optional) {
    type = string (Required)
    expression = string (Optional)
  }

  proxy_configuration block "list" (Optional) {
    container_name = string (Required)
    properties = ['map', 'string'] (Optional)
    type = string (Optional)
  }

  runtime_platform block "list" (Optional) {
    cpu_architecture = string (Optional)
    operating_system_family = string (Optional)
  }

  volume block "set" (Optional) {
    name = string (Required)
    configure_at_launch = bool (Optional, Computed)
    host_path = string (Optional)

    docker_volume_configuration block "list" (Optional) {
      autoprovision = bool (Optional)
      driver = string (Optional, Computed)
      driver_opts = ['map', 'string'] (Optional)
      labels = ['map', 'string'] (Optional)
      scope = string (Optional, Computed)
    }

    efs_volume_configuration block "list" (Optional) {
      file_system_id = string (Required)
      root_directory = string (Optional)
      transit_encryption = string (Optional)
      transit_encryption_port = number (Optional)

      authorization_config block "list" (Optional) {
        access_point_id = string (Optional)
        iam = string (Optional)
      }
    }

    fsx_windows_file_server_volume_configuration block "list" (Optional) {
      file_system_id = string (Required)
      root_directory = string (Required)

      authorization_config block "list" (Required) {
        credentials_parameter = string (Required)
        domain = string (Required)
      }
    }
  }
}
