resource "aws_datasync_location_fsx_ontap_file_system" "name" {
  security_group_arns = ['set', 'string'] (Required)
  storage_virtual_machine_arn = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  fsx_filesystem_arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subdirectory = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  protocol block "list" (Required) {

    nfs block "list" (Optional) {

      mount_options block "list" (Required) {
        version = string (Optional)
      }
    }

    smb block "list" (Optional) {
      password = string (Required)
      user = string (Required)
      domain = string (Optional)

      mount_options block "list" (Required) {
        version = string (Optional)
      }
    }
  }
}
