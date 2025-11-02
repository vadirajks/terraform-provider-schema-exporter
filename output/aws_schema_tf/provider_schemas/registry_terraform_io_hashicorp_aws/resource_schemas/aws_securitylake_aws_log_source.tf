resource "aws_securitylake_aws_log_source" "name" {
  id = string (Computed)
  region = string (Optional, Computed)

  source block "list" (Optional) {
    regions = ['set', 'string'] (Required)
    source_name = string (Required)
    accounts = ['set', 'string'] (Optional, Computed)
    source_version = string (Optional, Computed)
  }
}
