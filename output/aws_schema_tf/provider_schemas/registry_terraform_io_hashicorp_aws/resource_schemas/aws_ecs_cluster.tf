resource "aws_ecs_cluster" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  configuration block "list" (Optional) {

    execute_command_configuration block "list" (Optional) {
      kms_key_id = string (Optional)
      logging = string (Optional)

      log_configuration block "list" (Optional) {
        cloud_watch_encryption_enabled = bool (Optional)
        cloud_watch_log_group_name = string (Optional)
        s3_bucket_encryption_enabled = bool (Optional)
        s3_bucket_name = string (Optional)
        s3_key_prefix = string (Optional)
      }
    }

    managed_storage_configuration block "list" (Optional) {
      fargate_ephemeral_storage_kms_key_id = string (Optional)
      kms_key_id = string (Optional)
    }
  }

  service_connect_defaults block "list" (Optional) {
    namespace = string (Required)
  }

  setting block "set" (Optional) {
    name = string (Required)
    value = string (Required)
  }
}
