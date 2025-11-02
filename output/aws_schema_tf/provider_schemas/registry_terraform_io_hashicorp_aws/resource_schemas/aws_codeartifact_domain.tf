resource "aws_codeartifact_domain" "name" {
  domain = string (Required)
  arn = string (Computed)
  asset_size_bytes = string (Computed)
  created_time = string (Computed)
  encryption_key = string (Optional, Computed)
  id = string (Optional, Computed)
  owner = string (Computed)
  region = string (Optional, Computed)
  repository_count = number (Computed)
  s3_bucket_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
