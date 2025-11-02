resource "aws_storagegateway_smb_file_share" "name" {
  gateway_arn = string (Required)
  location_arn = string (Required)
  role_arn = string (Required)
  access_based_enumeration = bool (Optional)
  admin_user_list = ['set', 'string'] (Optional)
  arn = string (Computed)
  audit_destination_arn = string (Optional)
  authentication = string (Optional)
  bucket_region = string (Optional)
  case_sensitivity = string (Optional)
  default_storage_class = string (Optional)
  file_share_name = string (Optional, Computed)
  fileshare_id = string (Computed)
  guess_mime_type_enabled = bool (Optional)
  id = string (Optional, Computed)
  invalid_user_list = ['set', 'string'] (Optional)
  kms_encrypted = bool (Optional)
  kms_key_arn = string (Optional)
  notification_policy = string (Optional)
  object_acl = string (Optional)
  oplocks_enabled = bool (Optional, Computed)
  path = string (Computed)
  read_only = bool (Optional)
  region = string (Optional, Computed)
  requester_pays = bool (Optional)
  smb_acl_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  valid_user_list = ['set', 'string'] (Optional)
  vpc_endpoint_dns_name = string (Optional)

  cache_attributes block "list" (Optional) {
    cache_stale_timeout_in_seconds = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
