resource "aws_lightsail_bucket_resource_access" "name" {
  bucket_name = string (Required)
  resource_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
