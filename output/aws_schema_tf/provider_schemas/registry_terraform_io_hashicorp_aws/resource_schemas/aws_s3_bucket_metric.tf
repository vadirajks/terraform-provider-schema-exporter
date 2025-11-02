resource "aws_s3_bucket_metric" "name" {
  bucket = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  filter block "list" (Optional) {
    access_point = string (Optional)
    prefix = string (Optional)
    tags = ['map', 'string'] (Optional)
  }
}
