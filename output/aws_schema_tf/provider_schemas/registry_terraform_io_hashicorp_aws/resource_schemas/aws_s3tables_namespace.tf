resource "aws_s3tables_namespace" "name" {
  namespace = string (Required)
  table_bucket_arn = string (Required)
  created_at = string (Computed)
  created_by = string (Computed)
  owner_account_id = string (Computed)
  region = string (Optional, Computed)
}
