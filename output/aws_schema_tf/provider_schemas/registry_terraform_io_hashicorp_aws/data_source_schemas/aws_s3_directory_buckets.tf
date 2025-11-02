data "aws_s3_directory_buckets" "name" {
  arns = ['list', 'string'] (Computed)
  buckets = ['list', 'string'] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
