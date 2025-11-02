resource "aws_securitylake_custom_log_source" "name" {
  source_name = string (Required)
  attributes = ['list', ['object', {'crawler_arn': 'string', 'database_arn': 'string', 'table_arn': 'string'}]] (Computed)
  event_classes = ['set', 'string'] (Optional)
  id = string (Computed)
  provider_details = ['list', ['object', {'location': 'string', 'role_arn': 'string'}]] (Computed)
  region = string (Optional, Computed)
  source_version = string (Optional, Computed)

  configuration block "list" (Optional) {

    crawler_configuration block "list" (Optional) {
      role_arn = string (Required)
    }

    provider_identity block "list" (Optional) {
      external_id = string (Required)
      principal = string (Required)
    }
  }
}
