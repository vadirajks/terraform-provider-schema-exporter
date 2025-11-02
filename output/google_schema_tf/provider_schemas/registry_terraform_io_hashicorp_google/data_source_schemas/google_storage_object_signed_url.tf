data "google_storage_object_signed_url" "name" {
  bucket = string (Required)
  path = string (Required)
  content_md5 = string (Optional)
  content_type = string (Optional)
  credentials = string (Optional)
  duration = string (Optional)
  extension_headers = ['map', 'string'] (Optional)
  http_method = string (Optional)
  id = string (Optional, Computed)
  signed_url = string (Computed)
}
