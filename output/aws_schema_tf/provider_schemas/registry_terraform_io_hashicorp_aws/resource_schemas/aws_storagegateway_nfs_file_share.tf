resource "aws_storagegateway_nfs_file_share" "name" {
  client_list = ['set', 'string'] (Required)
  gateway_arn = string (Required)
  location_arn = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  audit_destination_arn = string (Optional)
  bucket_region = string (Optional)
  default_storage_class = string (Optional)
  file_share_name = string (Optional, Computed)
  fileshare_id = string (Computed)
  guess_mime_type_enabled = bool (Optional)
  id = string (Optional, Computed)
  kms_encrypted = bool (Optional)
  kms_key_arn = string (Optional)
  notification_policy = string (Optional)
  object_acl = string (Optional)
  path = string (Computed)
  read_only = bool (Optional)
  region = string (Optional, Computed)
  requester_pays = bool (Optional)
  squash = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_endpoint_dns_name = string (Optional)

  cache_attributes block "list" (Optional) {
    cache_stale_timeout_in_seconds = number (Optional)
  }

  nfs_file_share_defaults block "list" (Optional) {
    directory_mode = string (Optional)
    file_mode = string (Optional)
    group_id = string (Optional)
    owner_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
