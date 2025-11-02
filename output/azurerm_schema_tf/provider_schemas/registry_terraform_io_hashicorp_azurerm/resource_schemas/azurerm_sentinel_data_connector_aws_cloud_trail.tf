resource "azurerm_sentinel_data_connector_aws_cloud_trail" "name" {
  aws_role_arn = string (Required)
  log_analytics_workspace_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
