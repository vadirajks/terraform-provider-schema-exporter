resource "aws_config_configuration_aggregator" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  account_aggregation_source block "list" (Optional) {
    account_ids = ['list', 'string'] (Required)
    all_regions = bool (Optional)
    regions = ['list', 'string'] (Optional)
  }

  organization_aggregation_source block "list" (Optional) {
    role_arn = string (Required)
    all_regions = bool (Optional)
    regions = ['list', 'string'] (Optional)
  }
}
