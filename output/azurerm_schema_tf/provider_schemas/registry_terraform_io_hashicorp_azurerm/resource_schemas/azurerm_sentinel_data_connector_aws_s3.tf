resource "azurerm_sentinel_data_connector_aws_s3" "name" {
  aws_role_arn = string (Required)
  destination_table = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  sqs_urls = ['list', 'string'] (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
