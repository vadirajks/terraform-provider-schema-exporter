resource "azurerm_web_pubsub_hub" "name" {
  name = string (Required)
  web_pubsub_id = string (Required)
  anonymous_connections_enabled = bool (Optional)
  id = string (Optional, Computed)

  event_handler block "list" (Optional) {
    url_template = string (Required)
    system_events = ['set', 'string'] (Optional)
    user_event_pattern = string (Optional)

    auth block "list" (Optional) {
      managed_identity_id = string (Required)
    }
  }

  event_listener block "list" (Optional) {
    eventhub_name = string (Required)
    eventhub_namespace_name = string (Required)
    system_event_name_filter = ['list', 'string'] (Optional)
    user_event_name_filter = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
