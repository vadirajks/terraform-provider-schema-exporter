resource "azurerm_elastic_cloud_elasticsearch" "name" {
  elastic_cloud_email_address = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  elastic_cloud_deployment_id = string (Computed)
  elastic_cloud_sso_default_url = string (Computed)
  elastic_cloud_user_id = string (Computed)
  elasticsearch_service_url = string (Computed)
  id = string (Optional, Computed)
  kibana_service_url = string (Computed)
  kibana_sso_uri = string (Computed)
  monitoring_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  logs block "list" (Optional) {
    send_activity_logs = bool (Optional)
    send_azuread_logs = bool (Optional)
    send_subscription_logs = bool (Optional)

    filtering_tag block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
