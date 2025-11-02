resource "aws_transfer_access" "name" {
  external_id = string (Required)
  server_id = string (Required)
  home_directory = string (Optional)
  home_directory_type = string (Optional)
  id = string (Optional, Computed)
  policy = string (Optional)
  region = string (Optional, Computed)
  role = string (Optional)

  home_directory_mappings block "list" (Optional) {
    entry = string (Required)
    target = string (Required)
  }

  posix_profile block "list" (Optional) {
    gid = number (Required)
    uid = number (Required)
    secondary_gids = ['set', 'number'] (Optional)
  }
}
