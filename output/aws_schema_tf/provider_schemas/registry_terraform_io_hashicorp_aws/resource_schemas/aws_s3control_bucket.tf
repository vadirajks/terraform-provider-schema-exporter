resource "aws_s3control_bucket" "name" {
  bucket = string (Required)
  outpost_id = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  id = string (Optional, Computed)
  public_access_block_enabled = bool (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
