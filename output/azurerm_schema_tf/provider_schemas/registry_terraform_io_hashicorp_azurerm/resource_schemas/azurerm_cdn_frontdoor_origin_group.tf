resource "azurerm_cdn_frontdoor_origin_group" "name" {
  cdn_frontdoor_profile_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes = number (Optional)
  session_affinity_enabled = bool (Optional)

  health_probe block "list" (Optional) {
    interval_in_seconds = number (Required)
    protocol = string (Required)
    path = string (Optional)
    request_type = string (Optional)
  }

  load_balancing block "list" (Required) {
    additional_latency_in_milliseconds = number (Optional)
    sample_size = number (Optional)
    successful_samples_required = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
