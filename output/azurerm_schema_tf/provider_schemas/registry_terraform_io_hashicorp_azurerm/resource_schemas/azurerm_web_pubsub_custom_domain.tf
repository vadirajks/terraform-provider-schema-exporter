resource "azurerm_web_pubsub_custom_domain" "name" {
  domain_name = string (Required)
  name = string (Required)
  web_pubsub_custom_certificate_id = string (Required)
  web_pubsub_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
