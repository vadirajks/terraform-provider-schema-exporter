resource "aws_opensearch_package" "name" {
  package_name = string (Required)
  package_type = string (Required)
  available_package_version = string (Computed)
  engine_version = string (Optional)
  id = string (Optional, Computed)
  package_description = string (Optional)
  package_id = string (Computed)
  region = string (Optional, Computed)

  package_source block "list" (Required) {
    s3_bucket_name = string (Required)
    s3_key = string (Required)
  }
}
