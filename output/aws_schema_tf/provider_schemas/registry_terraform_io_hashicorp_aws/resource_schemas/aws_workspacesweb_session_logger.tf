resource "aws_workspacesweb_session_logger" "name" {
  additional_encryption_context = ['map', 'string'] (Optional)
  associated_portal_arns = ['list', 'string'] (Computed)
  customer_managed_key = string (Optional)
  display_name = string (Optional)
  region = string (Optional, Computed)
  session_logger_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  event_filter block "list" (Optional) {
    include = ['set', 'string'] (Optional)

    all block "list" (Optional) {
    }
  }

  log_configuration block "list" (Optional) {

    s3 block "list" (Optional) {
      bucket = string (Required)
      folder_structure = string (Required)
      log_file_format = string (Required)
      bucket_owner = string (Optional, Computed)
      key_prefix = string (Optional)
    }
  }
}
