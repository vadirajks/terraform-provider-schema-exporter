resource "aws_m2_environment" "name" {
  engine_type = string (Required)
  instance_type = string (Required)
  name = string (Required)
  apply_changes_during_maintenance_window = bool (Optional)
  arn = string (Computed)
  description = string (Optional)
  engine_version = string (Optional, Computed)
  environment_id = string (Computed)
  force_update = bool (Optional)
  id = string (Computed)
  kms_key_id = string (Optional)
  load_balancer_arn = string (Computed)
  preferred_maintenance_window = string (Optional, Computed)
  publicly_accessible = bool (Optional, Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  high_availability_config block "list" (Optional) {
    desired_capacity = number (Required)
  }

  storage_configuration block "list" (Optional) {

    efs block "list" (Optional) {
      file_system_id = string (Required)
      mount_point = string (Required)
    }

    fsx block "list" (Optional) {
      file_system_id = string (Required)
      mount_point = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
