data "azurerm_nginx_api_key" "name" {
  name = string (Required)
  nginx_deployment_id = string (Required)
  end_date_time = string (Computed)
  hint = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
