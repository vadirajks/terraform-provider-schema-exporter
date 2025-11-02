resource "azurerm_spring_cloud_gateway_route_config" "name" {
  name = string (Required)
  protocol = string (Required)
  spring_cloud_gateway_id = string (Required)
  filters = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  predicates = ['set', 'string'] (Optional)
  spring_cloud_app_id = string (Optional)
  sso_validation_enabled = bool (Optional)

  open_api block "list" (Optional) {
    uri = string (Optional)
  }

  route block "set" (Optional) {
    order = number (Required)
    classification_tags = ['set', 'string'] (Optional)
    description = string (Optional)
    filters = ['set', 'string'] (Optional)
    predicates = ['set', 'string'] (Optional)
    sso_validation_enabled = bool (Optional)
    title = string (Optional)
    token_relay = bool (Optional)
    uri = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
