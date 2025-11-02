resource "aws_lightsail_bucket_access_key" "name" {
  bucket_name = string (Required)
  access_key_id = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  secret_access_key = string (Computed)
  status = string (Computed)
}
