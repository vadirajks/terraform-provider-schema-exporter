resource "aws_datasync_task" "name" {
  destination_location_arn = string (Required)
  source_location_arn = string (Required)
  arn = string (Computed)
  cloudwatch_log_group_arn = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  task_mode = string (Optional, Computed)

  excludes block "list" (Optional) {
    filter_type = string (Optional)
    value = string (Optional)
  }

  includes block "list" (Optional) {
    filter_type = string (Optional)
    value = string (Optional)
  }

  options block "list" (Optional) {
    atime = string (Optional)
    bytes_per_second = number (Optional)
    gid = string (Optional)
    log_level = string (Optional)
    mtime = string (Optional)
    object_tags = string (Optional)
    overwrite_mode = string (Optional)
    posix_permissions = string (Optional)
    preserve_deleted_files = string (Optional)
    preserve_devices = string (Optional)
    security_descriptor_copy_flags = string (Optional, Computed)
    task_queueing = string (Optional)
    transfer_mode = string (Optional)
    uid = string (Optional)
    verify_mode = string (Optional)
  }

  schedule block "list" (Optional) {
    schedule_expression = string (Required)
  }

  task_report_config block "list" (Optional) {
    output_type = string (Optional)
    report_level = string (Optional)
    s3_object_versioning = string (Optional)

    report_overrides block "list" (Optional) {
      deleted_override = string (Optional)
      skipped_override = string (Optional)
      transferred_override = string (Optional)
      verified_override = string (Optional)
    }

    s3_destination block "list" (Required) {
      bucket_access_role_arn = string (Required)
      s3_bucket_arn = string (Required)
      subdirectory = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
