resource "azurerm_container_app_environment" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  custom_domain_verification_id = string (Computed)
  dapr_application_insights_connection_string = string (Optional)
  default_domain = string (Computed)
  docker_bridge_cidr = string (Computed)
  id = string (Optional, Computed)
  infrastructure_resource_group_name = string (Optional)
  infrastructure_subnet_id = string (Optional)
  internal_load_balancer_enabled = bool (Optional)
  log_analytics_workspace_id = string (Optional)
  logs_destination = string (Optional, Computed)
  mutual_tls_enabled = bool (Optional)
  platform_reserved_cidr = string (Computed)
  platform_reserved_dns_ip_address = string (Computed)
  public_network_access = string (Optional, Computed)
  static_ip_address = string (Computed)
  tags = ['map', 'string'] (Optional)
  zone_redundancy_enabled = bool (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  workload_profile block "set" (Optional) {
    name = string (Required)
    workload_profile_type = string (Required)
    maximum_count = number (Optional)
    minimum_count = number (Optional)
  }
}
