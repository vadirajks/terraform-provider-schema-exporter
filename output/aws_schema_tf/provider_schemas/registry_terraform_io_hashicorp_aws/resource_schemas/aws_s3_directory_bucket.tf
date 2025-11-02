resource "aws_s3_directory_bucket" "name" {
  bucket = string (Required)
  arn = string (Computed)
  data_redundancy = string (Optional, Computed)
  force_destroy = bool (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  type = string (Optional, Computed)

  location block "list" (Optional) {
    name = string (Required)
    type = string (Optional, Computed)
  }
}
