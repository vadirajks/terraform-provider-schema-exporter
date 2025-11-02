resource "aws_s3_bucket_intelligent_tiering_configuration" "name" {
  bucket = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Optional)

  filter block "list" (Optional) {
    prefix = string (Optional)
    tags = ['map', 'string'] (Optional)
  }

  tiering block "set" (Required) {
    access_tier = string (Required)
    days = number (Required)
  }
}
