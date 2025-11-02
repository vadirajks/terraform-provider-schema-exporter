resource "google_storage_bucket_object" "name" {
  bucket = string (Required)
  name = string (Required)
  cache_control = string (Optional)
  content = string (Optional, Computed)
  content_disposition = string (Optional)
  content_encoding = string (Optional)
  content_language = string (Optional)
  content_type = string (Optional, Computed)
  crc32c = string (Computed)
  deletion_policy = string (Optional)
  detect_md5hash = string (Optional)
  event_based_hold = bool (Optional)
  force_empty_content_type = bool (Optional)
  generation = number (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional, Computed)
  md5hash = string (Computed)
  md5hexhash = string (Computed)
  media_link = string (Computed)
  metadata = ['map', 'string'] (Optional)
  output_name = string (Computed)
  self_link = string (Computed)
  source = string (Optional)
  source_md5hash = string (Optional)
  storage_class = string (Optional, Computed)
  temporary_hold = bool (Optional)

  customer_encryption block "list" (Optional) {
    encryption_key = string (Required)
    encryption_algorithm = string (Optional)
  }

  retention block "list" (Optional) {
    mode = string (Required)
    retain_until_time = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
