resource "azurerm_sentinel_threat_intelligence_indicator" "name" {
  display_name = string (Required)
  pattern = string (Required)
  pattern_type = string (Required)
  source = string (Required)
  validate_from_utc = string (Required)
  workspace_id = string (Required)
  confidence = number (Optional)
  created_by = string (Optional)
  created_on = string (Computed)
  defanged = bool (Computed)
  description = string (Optional)
  extension = string (Optional, Computed)
  external_id = string (Computed)
  external_last_updated_time_utc = string (Computed)
  guid = string (Computed)
  id = string (Optional, Computed)
  indicator_type = ['list', 'string'] (Computed)
  language = string (Optional)
  last_updated_time_utc = string (Computed)
  object_marking_refs = ['list', 'string'] (Optional)
  parsed_pattern = ['list', ['object', {'pattern_type_key': 'string', 'pattern_type_values': ['list', ['object', {'value': 'string', 'value_type': 'string'}]]}]] (Computed)
  pattern_version = string (Optional)
  revoked = bool (Optional)
  tags = ['list', 'string'] (Optional)
  threat_types = ['list', 'string'] (Optional)
  validate_until_utc = string (Optional)

  external_reference block "list" (Optional) {
    description = string (Optional)
    hashes = ['map', 'string'] (Optional)
    id = string (Computed)
    source_name = string (Optional)
    url = string (Optional)
  }

  granular_marking block "list" (Optional) {
    language = string (Optional)
    marking_ref = string (Optional)
    selectors = ['list', 'string'] (Optional)
  }

  kill_chain_phase block "list" (Optional) {
    name = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
