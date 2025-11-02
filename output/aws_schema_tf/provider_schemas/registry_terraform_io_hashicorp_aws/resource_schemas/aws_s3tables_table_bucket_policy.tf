resource "aws_s3tables_table_bucket_policy" "name" {
  resource_policy = string (Required)
  table_bucket_arn = string (Required)
  region = string (Optional, Computed)
}
