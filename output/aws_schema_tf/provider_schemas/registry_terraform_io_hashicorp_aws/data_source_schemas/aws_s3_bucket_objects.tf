data "aws_s3_bucket_objects" "name" {
  bucket = string (Required)
  common_prefixes = ['list', 'string'] (Computed)
  delimiter = string (Optional)
  encoding_type = string (Optional)
  fetch_owner = bool (Optional)
  id = string (Optional, Computed)
  keys = ['list', 'string'] (Computed)
  max_keys = number (Optional)
  owners = ['list', 'string'] (Computed)
  prefix = string (Optional)
  region = string (Optional, Computed)
  start_after = string (Optional)
}
