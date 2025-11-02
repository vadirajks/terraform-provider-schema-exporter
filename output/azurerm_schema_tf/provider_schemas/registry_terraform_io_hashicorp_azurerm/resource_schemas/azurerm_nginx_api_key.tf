resource "azurerm_nginx_api_key" "name" {
  end_date_time = string (Required)
  name = string (Required)
  nginx_deployment_id = string (Required)
  secret_text = string (Required)
  hint = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
