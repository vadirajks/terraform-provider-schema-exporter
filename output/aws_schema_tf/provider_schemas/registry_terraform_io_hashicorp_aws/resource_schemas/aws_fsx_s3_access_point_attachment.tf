resource "aws_fsx_s3_access_point_attachment" "name" {
  name = string (Required)
  type = string (Required)
  region = string (Optional, Computed)
  s3_access_point_alias = string (Computed)
  s3_access_point_arn = string (Computed)

  openzfs_configuration block "list" (Optional) {
    volume_id = string (Required)

    file_system_identity block "list" (Optional) {
      type = string (Required)

      posix_user block "list" (Optional) {
        gid = number (Required)
        uid = number (Required)
        secondary_gids = ['list', 'number'] (Optional)
      }
    }
  }

  s3_access_point block "list" (Optional) {
    policy = string (Optional)

    vpc_configuration block "list" (Optional) {
      vpc_id = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
