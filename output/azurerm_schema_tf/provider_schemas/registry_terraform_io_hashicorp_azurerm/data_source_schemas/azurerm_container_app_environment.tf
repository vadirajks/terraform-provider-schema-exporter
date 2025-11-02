data "azurerm_container_app_environment" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  custom_domain_verification_id = string (Computed)
  default_domain = string (Computed)
  docker_bridge_cidr = string (Computed)
  id = string (Optional, Computed)
  infrastructure_subnet_id = string (Computed)
  internal_load_balancer_enabled = bool (Computed)
  location = string (Computed)
  log_analytics_workspace_name = string (Computed)
  platform_reserved_cidr = string (Computed)
  platform_reserved_dns_ip_address = string (Computed)
  public_network_access = string (Computed)
  static_ip_address = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
