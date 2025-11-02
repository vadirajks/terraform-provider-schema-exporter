resource "aws_securitylake_subscriber" "name" {
  access_type = string (Optional, Computed)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  resource_share_arn = string (Computed)
  resource_share_name = string (Computed)
  role_arn = string (Computed)
  s3_bucket_arn = string (Computed)
  subscriber_description = string (Optional)
  subscriber_endpoint = string (Computed)
  subscriber_name = string (Optional)
  subscriber_status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  source block "set" (Optional) {

    aws_log_source_resource block "list" (Optional) {
      source_name = string (Required)
      source_version = string (Optional, Computed)
    }

    custom_log_source_resource block "list" (Optional) {
      source_name = string (Required)
      attributes = ['list', ['object', {'crawler_arn': 'string', 'database_arn': 'string', 'table_arn': 'string'}]] (Computed)
      provider = ['list', ['object', {'location': 'string', 'role_arn': 'string'}]] (Computed)
      source_version = string (Optional, Computed)
    }
  }

  subscriber_identity block "list" (Optional) {
    external_id = string (Required)
    principal = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
