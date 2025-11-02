resource "aws_s3control_directory_bucket_access_point_scope" "name" {
  account_id = string (Required)
  name = string (Required)
  region = string (Optional, Computed)

  scope block "list" (Optional) {
    permissions = ['list', 'string'] (Optional)
    prefixes = ['list', 'string'] (Optional)
  }
}
