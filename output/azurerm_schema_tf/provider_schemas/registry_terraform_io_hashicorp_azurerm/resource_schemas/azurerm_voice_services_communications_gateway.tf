resource "azurerm_voice_services_communications_gateway" "name" {
  codecs = string (Required)
  connectivity = string (Required)
  e911_type = string (Required)
  location = string (Required)
  name = string (Required)
  platforms = ['list', 'string'] (Required)
  resource_group_name = string (Required)
  api_bridge = string (Optional)
  auto_generated_domain_name_label_scope = string (Optional)
  emergency_dial_strings = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  microsoft_teams_voicemail_pilot_number = string (Optional)
  on_prem_mcp_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  service_location block "set" (Required) {
    location = string (Required)
    operator_addresses = ['set', 'string'] (Required)
    allowed_media_source_address_prefixes = ['set', 'string'] (Optional)
    allowed_signaling_source_address_prefixes = ['set', 'string'] (Optional)
    esrp_addresses = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
