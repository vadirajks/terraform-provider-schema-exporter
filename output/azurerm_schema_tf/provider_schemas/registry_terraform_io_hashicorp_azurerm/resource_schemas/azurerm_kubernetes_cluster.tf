resource "azurerm_kubernetes_cluster" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  ai_toolchain_operator_enabled = bool (Optional)
  automatic_upgrade_channel = string (Optional)
  azure_policy_enabled = bool (Optional)
  cost_analysis_enabled = bool (Optional)
  current_kubernetes_version = string (Computed)
  custom_ca_trust_certificates_base64 = ['list', 'string'] (Optional)
  disk_encryption_set_id = string (Optional)
  dns_prefix = string (Optional)
  dns_prefix_private_cluster = string (Optional)
  edge_zone = string (Optional)
  fqdn = string (Computed)
  http_application_routing_enabled = bool (Optional)
  http_application_routing_zone_name = string (Computed)
  id = string (Optional, Computed)
  image_cleaner_enabled = bool (Optional)
  image_cleaner_interval_hours = number (Optional)
  kube_admin_config = ['list', ['object', {'client_certificate': 'string', 'client_key': 'string', 'cluster_ca_certificate': 'string', 'host': 'string', 'password': 'string', 'username': 'string'}]] (Computed)
  kube_admin_config_raw = string (Computed)
  kube_config = ['list', ['object', {'client_certificate': 'string', 'client_key': 'string', 'cluster_ca_certificate': 'string', 'host': 'string', 'password': 'string', 'username': 'string'}]] (Computed)
  kube_config_raw = string (Computed)
  kubernetes_version = string (Optional, Computed)
  local_account_disabled = bool (Optional)
  node_os_upgrade_channel = string (Optional)
  node_resource_group = string (Optional, Computed)
  node_resource_group_id = string (Computed)
  oidc_issuer_enabled = bool (Optional)
  oidc_issuer_url = string (Computed)
  open_service_mesh_enabled = bool (Optional)
  portal_fqdn = string (Computed)
  private_cluster_enabled = bool (Optional)
  private_cluster_public_fqdn_enabled = bool (Optional)
  private_dns_zone_id = string (Optional, Computed)
  private_fqdn = string (Computed)
  role_based_access_control_enabled = bool (Optional)
  run_command_enabled = bool (Optional)
  sku_tier = string (Optional)
  support_plan = string (Optional)
  tags = ['map', 'string'] (Optional)
  workload_identity_enabled = bool (Optional)

  aci_connector_linux block "list" (Optional) {
    subnet_name = string (Required)
    connector_identity = ['list', ['object', {'client_id': 'string', 'object_id': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
  }

  api_server_access_profile block "list" (Optional) {
    authorized_ip_ranges = ['set', 'string'] (Optional)
    subnet_id = string (Optional)
    virtual_network_integration_enabled = bool (Optional)
  }

  auto_scaler_profile block "list" (Optional) {
    balance_similar_node_groups = bool (Optional)
    daemonset_eviction_for_empty_nodes_enabled = bool (Optional)
    daemonset_eviction_for_occupied_nodes_enabled = bool (Optional)
    empty_bulk_delete_max = string (Optional, Computed)
    expander = string (Optional)
    ignore_daemonsets_utilization_enabled = bool (Optional)
    max_graceful_termination_sec = string (Optional, Computed)
    max_node_provisioning_time = string (Optional)
    max_unready_nodes = number (Optional)
    max_unready_percentage = number (Optional)
    new_pod_scale_up_delay = string (Optional, Computed)
    scale_down_delay_after_add = string (Optional, Computed)
    scale_down_delay_after_delete = string (Optional, Computed)
    scale_down_delay_after_failure = string (Optional, Computed)
    scale_down_unneeded = string (Optional, Computed)
    scale_down_unready = string (Optional, Computed)
    scale_down_utilization_threshold = string (Optional, Computed)
    scan_interval = string (Optional, Computed)
    skip_nodes_with_local_storage = bool (Optional)
    skip_nodes_with_system_pods = bool (Optional)
  }

  azure_active_directory_role_based_access_control block "list" (Optional) {
    admin_group_object_ids = ['list', 'string'] (Optional)
    azure_rbac_enabled = bool (Optional)
    tenant_id = string (Optional, Computed)
  }

  bootstrap_profile block "list" (Optional) {
    artifact_source = string (Optional)
    container_registry_id = string (Optional)
  }

  confidential_computing block "list" (Optional) {
    sgx_quote_helper_enabled = bool (Required)
  }

  default_node_pool block "list" (Required) {
    name = string (Required)
    auto_scaling_enabled = bool (Optional)
    capacity_reservation_group_id = string (Optional)
    fips_enabled = bool (Optional)
    gpu_driver = string (Optional)
    gpu_instance = string (Optional)
    host_encryption_enabled = bool (Optional)
    host_group_id = string (Optional)
    kubelet_disk_type = string (Optional, Computed)
    max_count = number (Optional)
    max_pods = number (Optional, Computed)
    min_count = number (Optional)
    node_count = number (Optional, Computed)
    node_labels = ['map', 'string'] (Optional, Computed)
    node_public_ip_enabled = bool (Optional)
    node_public_ip_prefix_id = string (Optional)
    only_critical_addons_enabled = bool (Optional)
    orchestrator_version = string (Optional, Computed)
    os_disk_size_gb = number (Optional, Computed)
    os_disk_type = string (Optional)
    os_sku = string (Optional, Computed)
    pod_subnet_id = string (Optional)
    proximity_placement_group_id = string (Optional)
    scale_down_mode = string (Optional)
    snapshot_id = string (Optional)
    tags = ['map', 'string'] (Optional)
    temporary_name_for_rotation = string (Optional)
    type = string (Optional)
    ultra_ssd_enabled = bool (Optional)
    vm_size = string (Optional, Computed)
    vnet_subnet_id = string (Optional)
    workload_runtime = string (Optional, Computed)
    zones = ['set', 'string'] (Optional)

    kubelet_config block "list" (Optional) {
      allowed_unsafe_sysctls = ['set', 'string'] (Optional)
      container_log_max_line = number (Optional)
      container_log_max_size_mb = number (Optional)
      cpu_cfs_quota_enabled = bool (Optional)
      cpu_cfs_quota_period = string (Optional)
      cpu_manager_policy = string (Optional)
      image_gc_high_threshold = number (Optional)
      image_gc_low_threshold = number (Optional)
      pod_max_pid = number (Optional)
      topology_manager_policy = string (Optional)
    }

    linux_os_config block "list" (Optional) {
      swap_file_size_mb = number (Optional)
      transparent_huge_page = string (Optional, Computed)
      transparent_huge_page_defrag = string (Optional)
      transparent_huge_page_enabled = string (Optional, Computed)

      sysctl_config block "list" (Optional) {
        fs_aio_max_nr = number (Optional)
        fs_file_max = number (Optional)
        fs_inotify_max_user_watches = number (Optional)
        fs_nr_open = number (Optional)
        kernel_threads_max = number (Optional)
        net_core_netdev_max_backlog = number (Optional)
        net_core_optmem_max = number (Optional)
        net_core_rmem_default = number (Optional)
        net_core_rmem_max = number (Optional)
        net_core_somaxconn = number (Optional)
        net_core_wmem_default = number (Optional)
        net_core_wmem_max = number (Optional)
        net_ipv4_ip_local_port_range_max = number (Optional)
        net_ipv4_ip_local_port_range_min = number (Optional)
        net_ipv4_neigh_default_gc_thresh1 = number (Optional)
        net_ipv4_neigh_default_gc_thresh2 = number (Optional)
        net_ipv4_neigh_default_gc_thresh3 = number (Optional)
        net_ipv4_tcp_fin_timeout = number (Optional)
        net_ipv4_tcp_keepalive_intvl = number (Optional)
        net_ipv4_tcp_keepalive_probes = number (Optional)
        net_ipv4_tcp_keepalive_time = number (Optional)
        net_ipv4_tcp_max_syn_backlog = number (Optional)
        net_ipv4_tcp_max_tw_buckets = number (Optional)
        net_ipv4_tcp_tw_reuse = bool (Optional)
        net_netfilter_nf_conntrack_buckets = number (Optional)
        net_netfilter_nf_conntrack_max = number (Optional)
        vm_max_map_count = number (Optional)
        vm_swappiness = number (Optional)
        vm_vfs_cache_pressure = number (Optional)
      }
    }

    node_network_profile block "list" (Optional) {
      application_security_group_ids = ['list', 'string'] (Optional)
      node_public_ip_tags = ['map', 'string'] (Optional)

      allowed_host_ports block "list" (Optional) {
        port_end = number (Optional)
        port_start = number (Optional)
        protocol = string (Optional)
      }
    }

    upgrade_settings block "list" (Optional) {
      max_surge = string (Required)
      drain_timeout_in_minutes = number (Optional)
      node_soak_duration_in_minutes = number (Optional)
    }
  }

  http_proxy_config block "list" (Optional) {
    http_proxy = string (Optional)
    https_proxy = string (Optional)
    no_proxy = ['set', 'string'] (Optional)
    trusted_ca = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  ingress_application_gateway block "list" (Optional) {
    effective_gateway_id = string (Computed)
    gateway_id = string (Optional)
    gateway_name = string (Optional)
    ingress_application_gateway_identity = ['list', ['object', {'client_id': 'string', 'object_id': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
    subnet_cidr = string (Optional)
    subnet_id = string (Optional)
  }

  key_management_service block "list" (Optional) {
    key_vault_key_id = string (Required)
    key_vault_network_access = string (Optional)
  }

  key_vault_secrets_provider block "list" (Optional) {
    secret_identity = ['list', ['object', {'client_id': 'string', 'object_id': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
    secret_rotation_enabled = bool (Optional)
    secret_rotation_interval = string (Optional)
  }

  kubelet_identity block "list" (Optional) {
    client_id = string (Optional, Computed)
    object_id = string (Optional, Computed)
    user_assigned_identity_id = string (Optional, Computed)
  }

  linux_profile block "list" (Optional) {
    admin_username = string (Required)

    ssh_key block "list" (Required) {
      key_data = string (Required)
    }
  }

  maintenance_window block "list" (Optional) {

    allowed block "set" (Optional) {
      day = string (Required)
      hours = ['set', 'number'] (Required)
    }

    not_allowed block "set" (Optional) {
      end = string (Required)
      start = string (Required)
    }
  }

  maintenance_window_auto_upgrade block "list" (Optional) {
    duration = number (Required)
    frequency = string (Required)
    interval = number (Required)
    day_of_month = number (Optional)
    day_of_week = string (Optional)
    start_date = string (Optional, Computed)
    start_time = string (Optional)
    utc_offset = string (Optional)
    week_index = string (Optional)

    not_allowed block "set" (Optional) {
      end = string (Required)
      start = string (Required)
    }
  }

  maintenance_window_node_os block "list" (Optional) {
    duration = number (Required)
    frequency = string (Required)
    interval = number (Required)
    day_of_month = number (Optional)
    day_of_week = string (Optional)
    start_date = string (Optional, Computed)
    start_time = string (Optional)
    utc_offset = string (Optional)
    week_index = string (Optional)

    not_allowed block "set" (Optional) {
      end = string (Required)
      start = string (Required)
    }
  }

  microsoft_defender block "list" (Optional) {
    log_analytics_workspace_id = string (Required)
  }

  monitor_metrics block "list" (Optional) {
    annotations_allowed = string (Optional)
    labels_allowed = string (Optional)
  }

  network_profile block "list" (Optional) {
    network_plugin = string (Required)
    dns_service_ip = string (Optional, Computed)
    ip_versions = ['list', 'string'] (Optional, Computed)
    load_balancer_sku = string (Optional)
    network_data_plane = string (Optional)
    network_mode = string (Optional, Computed)
    network_plugin_mode = string (Optional)
    network_policy = string (Optional, Computed)
    outbound_type = string (Optional)
    pod_cidr = string (Optional, Computed)
    pod_cidrs = ['list', 'string'] (Optional, Computed)
    service_cidr = string (Optional, Computed)
    service_cidrs = ['list', 'string'] (Optional, Computed)

    advanced_networking block "list" (Optional) {
      observability_enabled = bool (Optional)
      security_enabled = bool (Optional)
    }

    load_balancer_profile block "list" (Optional) {
      backend_pool_type = string (Optional)
      effective_outbound_ips = ['set', 'string'] (Computed)
      idle_timeout_in_minutes = number (Optional)
      managed_outbound_ip_count = number (Optional, Computed)
      managed_outbound_ipv6_count = number (Optional, Computed)
      outbound_ip_address_ids = ['set', 'string'] (Optional)
      outbound_ip_prefix_ids = ['set', 'string'] (Optional)
      outbound_ports_allocated = number (Optional)
    }

    nat_gateway_profile block "list" (Optional) {
      effective_outbound_ips = ['set', 'string'] (Computed)
      idle_timeout_in_minutes = number (Optional)
      managed_outbound_ip_count = number (Optional, Computed)
    }
  }

  oms_agent block "list" (Optional) {
    log_analytics_workspace_id = string (Required)
    msi_auth_for_monitoring_enabled = bool (Optional)
    oms_agent_identity = ['list', ['object', {'client_id': 'string', 'object_id': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
  }

  service_mesh_profile block "list" (Optional) {
    mode = string (Required)
    revisions = ['list', 'string'] (Required)
    external_ingress_gateway_enabled = bool (Optional)
    internal_ingress_gateway_enabled = bool (Optional)

    certificate_authority block "list" (Optional) {
      cert_chain_object_name = string (Required)
      cert_object_name = string (Required)
      key_object_name = string (Required)
      key_vault_id = string (Required)
      root_cert_object_name = string (Required)
    }
  }

  service_principal block "list" (Optional) {
    client_id = string (Required)
    client_secret = string (Required)
  }

  storage_profile block "list" (Optional) {
    blob_driver_enabled = bool (Optional)
    disk_driver_enabled = bool (Optional)
    file_driver_enabled = bool (Optional)
    snapshot_controller_enabled = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  upgrade_override block "list" (Optional) {
    force_upgrade_enabled = bool (Required)
    effective_until = string (Optional)
  }

  web_app_routing block "list" (Optional) {
    dns_zone_ids = ['list', 'string'] (Required)
    default_nginx_controller = string (Optional)
    web_app_routing_identity = ['list', ['object', {'client_id': 'string', 'object_id': 'string', 'user_assigned_identity_id': 'string'}]] (Computed)
  }

  windows_profile block "list" (Optional) {
    admin_password = string (Required)
    admin_username = string (Required)
    license = string (Optional)

    gmsa block "list" (Optional) {
      dns_server = string (Required)
      root_domain = string (Required)
    }
  }

  workload_autoscaler_profile block "list" (Optional) {
    keda_enabled = bool (Optional)
    vertical_pod_autoscaler_enabled = bool (Optional)
  }
}
