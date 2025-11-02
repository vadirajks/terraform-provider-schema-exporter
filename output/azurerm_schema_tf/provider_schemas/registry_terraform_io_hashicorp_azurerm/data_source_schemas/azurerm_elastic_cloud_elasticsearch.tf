data "azurerm_elastic_cloud_elasticsearch" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  elastic_cloud_deployment_id = string (Computed)
  elastic_cloud_email_address = string (Computed)
  elastic_cloud_sso_default_url = string (Computed)
  elastic_cloud_user_id = string (Computed)
  elasticsearch_service_url = string (Computed)
  id = string (Optional, Computed)
  kibana_service_url = string (Computed)
  kibana_sso_uri = string (Computed)
  location = string (Computed)
  monitoring_enabled = bool (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  logs block "list" (Optional) {
    filtering_tag = ['list', ['object', {'action': 'string', 'name': 'string', 'value': 'string'}]] (Computed)
    send_activity_logs = bool (Computed)
    send_azuread_logs = bool (Computed)
    send_subscription_logs = bool (Computed)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
