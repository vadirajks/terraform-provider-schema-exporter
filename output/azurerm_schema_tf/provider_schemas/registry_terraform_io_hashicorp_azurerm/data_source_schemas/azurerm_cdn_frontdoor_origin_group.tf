data "azurerm_cdn_frontdoor_origin_group" "name" {
  name = string (Required)
  profile_name = string (Required)
  resource_group_name = string (Required)
  cdn_frontdoor_profile_id = string (Computed)
  health_probe = ['list', ['object', {'interval_in_seconds': 'number', 'path': 'string', 'protocol': 'string', 'request_type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  load_balancing = ['list', ['object', {'additional_latency_in_milliseconds': 'number', 'sample_size': 'number', 'successful_samples_required': 'number'}]] (Computed)
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes = number (Computed)
  session_affinity_enabled = bool (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
