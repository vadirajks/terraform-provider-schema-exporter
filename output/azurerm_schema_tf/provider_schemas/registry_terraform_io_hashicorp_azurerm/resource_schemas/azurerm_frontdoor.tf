resource "azurerm_frontdoor" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  backend_pool_health_probes = ['map', 'string'] (Computed)
  backend_pool_load_balancing_settings = ['map', 'string'] (Computed)
  backend_pools = ['map', 'string'] (Computed)
  cname = string (Computed)
  explicit_resource_order = ['list', ['object', {'backend_pool_health_probe_ids': ['list', 'string'], 'backend_pool_ids': ['list', 'string'], 'backend_pool_load_balancing_ids': ['list', 'string'], 'frontend_endpoint_ids': ['list', 'string'], 'routing_rule_ids': ['list', 'string']}]] (Computed)
  friendly_name = string (Optional)
  frontend_endpoints = ['map', 'string'] (Computed)
  header_frontdoor_id = string (Computed)
  id = string (Optional, Computed)
  load_balancer_enabled = bool (Optional)
  routing_rules = ['map', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)

  backend_pool block "list" (Required) {
    health_probe_name = string (Required)
    load_balancing_name = string (Required)
    name = string (Required)
    id = string (Computed)

    backend block "list" (Required) {
      address = string (Required)
      host_header = string (Required)
      http_port = number (Required)
      https_port = number (Required)
      enabled = bool (Optional)
      priority = number (Optional)
      weight = number (Optional)
    }
  }

  backend_pool_health_probe block "list" (Required) {
    name = string (Required)
    enabled = bool (Optional)
    id = string (Computed)
    interval_in_seconds = number (Optional)
    path = string (Optional)
    probe_method = string (Optional)
    protocol = string (Optional)
  }

  backend_pool_load_balancing block "list" (Required) {
    name = string (Required)
    additional_latency_milliseconds = number (Optional)
    id = string (Computed)
    sample_size = number (Optional)
    successful_samples_required = number (Optional)
  }

  backend_pool_settings block "list" (Optional) {
    enforce_backend_pools_certificate_name_check = bool (Required)
    backend_pools_send_receive_timeout_seconds = number (Optional)
  }

  frontend_endpoint block "list" (Required) {
    host_name = string (Required)
    name = string (Required)
    id = string (Computed)
    session_affinity_enabled = bool (Optional)
    session_affinity_ttl_seconds = number (Optional)
    web_application_firewall_policy_link_id = string (Optional)
  }

  routing_rule block "list" (Required) {
    accepted_protocols = ['list', 'string'] (Required)
    frontend_endpoints = ['list', 'string'] (Required)
    name = string (Required)
    patterns_to_match = ['list', 'string'] (Required)
    enabled = bool (Optional)
    id = string (Computed)

    forwarding_configuration block "list" (Optional) {
      backend_pool_name = string (Required)
      cache_duration = string (Optional)
      cache_enabled = bool (Optional)
      cache_query_parameter_strip_directive = string (Optional)
      cache_query_parameters = ['list', 'string'] (Optional)
      cache_use_dynamic_compression = bool (Optional)
      custom_forwarding_path = string (Optional)
      forwarding_protocol = string (Optional)
    }

    redirect_configuration block "list" (Optional) {
      redirect_protocol = string (Required)
      redirect_type = string (Required)
      custom_fragment = string (Optional)
      custom_host = string (Optional)
      custom_path = string (Optional)
      custom_query_string = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
