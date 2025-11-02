resource "azurerm_service_fabric_cluster" "name" {
  location = string (Required)
  management_endpoint = string (Required)
  name = string (Required)
  reliability_level = string (Required)
  resource_group_name = string (Required)
  upgrade_mode = string (Required)
  vm_image = string (Required)
  add_on_features = ['set', 'string'] (Optional)
  cluster_code_version = string (Optional, Computed)
  cluster_endpoint = string (Computed)
  id = string (Optional, Computed)
  service_fabric_zonal_upgrade_mode = string (Optional)
  tags = ['map', 'string'] (Optional)
  vmss_zonal_upgrade_mode = string (Optional)

  azure_active_directory block "list" (Optional) {
    client_application_id = string (Required)
    cluster_application_id = string (Required)
    tenant_id = string (Required)
  }

  certificate block "list" (Optional) {
    thumbprint = string (Required)
    x509_store_name = string (Required)
    thumbprint_secondary = string (Optional)
  }

  certificate_common_names block "list" (Optional) {
    x509_store_name = string (Required)

    common_names block "set" (Required) {
      certificate_common_name = string (Required)
      certificate_issuer_thumbprint = string (Optional)
    }
  }

  client_certificate_common_name block "list" (Optional) {
    common_name = string (Required)
    is_admin = bool (Required)
    issuer_thumbprint = string (Optional)
  }

  client_certificate_thumbprint block "list" (Optional) {
    is_admin = bool (Required)
    thumbprint = string (Required)
  }

  diagnostics_config block "list" (Optional) {
    blob_endpoint = string (Required)
    protected_account_key_name = string (Required)
    queue_endpoint = string (Required)
    storage_account_name = string (Required)
    table_endpoint = string (Required)
  }

  fabric_settings block "list" (Optional) {
    name = string (Required)
    parameters = ['map', 'string'] (Optional)
  }

  node_type block "list" (Required) {
    client_endpoint_port = number (Required)
    http_endpoint_port = number (Required)
    instance_count = number (Required)
    is_primary = bool (Required)
    name = string (Required)
    capacities = ['map', 'string'] (Optional)
    durability_level = string (Optional)
    is_stateless = bool (Optional)
    multiple_availability_zones = bool (Optional)
    placement_properties = ['map', 'string'] (Optional)
    reverse_proxy_endpoint_port = number (Optional)

    application_ports block "list" (Optional) {
      end_port = number (Required)
      start_port = number (Required)
    }

    ephemeral_ports block "list" (Optional) {
      end_port = number (Required)
      start_port = number (Required)
    }
  }

  reverse_proxy_certificate block "list" (Optional) {
    thumbprint = string (Required)
    x509_store_name = string (Required)
    thumbprint_secondary = string (Optional)
  }

  reverse_proxy_certificate_common_names block "list" (Optional) {
    x509_store_name = string (Required)

    common_names block "set" (Required) {
      certificate_common_name = string (Required)
      certificate_issuer_thumbprint = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  upgrade_policy block "list" (Optional) {
    force_restart_enabled = bool (Optional)
    health_check_retry_timeout = string (Optional)
    health_check_stable_duration = string (Optional)
    health_check_wait_duration = string (Optional)
    upgrade_domain_timeout = string (Optional)
    upgrade_replica_set_check_timeout = string (Optional)
    upgrade_timeout = string (Optional)

    delta_health_policy block "list" (Optional) {
      max_delta_unhealthy_applications_percent = number (Optional)
      max_delta_unhealthy_nodes_percent = number (Optional)
      max_upgrade_domain_delta_unhealthy_nodes_percent = number (Optional)
    }

    health_policy block "list" (Optional) {
      max_unhealthy_applications_percent = number (Optional)
      max_unhealthy_nodes_percent = number (Optional)
    }
  }
}
