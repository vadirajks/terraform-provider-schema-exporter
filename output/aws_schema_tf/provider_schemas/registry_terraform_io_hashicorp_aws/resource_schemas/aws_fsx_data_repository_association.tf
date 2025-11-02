resource "aws_fsx_data_repository_association" "name" {
  data_repository_path = string (Required)
  file_system_id = string (Required)
  file_system_path = string (Required)
  arn = string (Computed)
  association_id = string (Computed)
  batch_import_meta_data_on_create = bool (Optional)
  delete_data_in_filesystem = bool (Optional)
  id = string (Optional, Computed)
  imported_file_chunk_size = number (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  s3 block "list" (Optional) {

    auto_export_policy block "list" (Optional) {
      events = ['list', 'string'] (Optional, Computed)
    }

    auto_import_policy block "list" (Optional) {
      events = ['list', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
