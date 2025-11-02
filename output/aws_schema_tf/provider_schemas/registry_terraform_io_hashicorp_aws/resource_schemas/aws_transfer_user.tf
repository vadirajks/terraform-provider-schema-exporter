resource "aws_transfer_user" "name" {
  role = string (Required)
  server_id = string (Required)
  user_name = string (Required)
  arn = string (Computed)
  home_directory = string (Optional)
  home_directory_type = string (Optional)
  id = string (Optional, Computed)
  policy = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  home_directory_mappings block "list" (Optional) {
    entry = string (Required)
    target = string (Required)
  }

  posix_profile block "list" (Optional) {
    gid = number (Required)
    uid = number (Required)
    secondary_gids = ['set', 'number'] (Optional)
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
