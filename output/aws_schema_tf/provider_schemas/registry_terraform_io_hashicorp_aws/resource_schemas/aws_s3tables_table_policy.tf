resource "aws_s3tables_table_policy" "name" {
  name = string (Required)
  namespace = string (Required)
  resource_policy = string (Required)
  table_bucket_arn = string (Required)
  region = string (Optional, Computed)
}
