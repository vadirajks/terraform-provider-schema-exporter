resource "azurerm_kubernetes_cluster_node_pool" "name" {
  kubernetes_cluster_id = string (Required)
  name = string (Required)
  auto_scaling_enabled = bool (Optional)
  capacity_reservation_group_id = string (Optional)
  eviction_policy = string (Optional)
  fips_enabled = bool (Optional)
  gpu_driver = string (Optional)
  gpu_instance = string (Optional)
  host_encryption_enabled = bool (Optional)
  host_group_id = string (Optional)
  id = string (Optional, Computed)
  kubelet_disk_type = string (Optional, Computed)
  max_count = number (Optional)
  max_pods = number (Optional, Computed)
  min_count = number (Optional)
  mode = string (Optional)
  node_count = number (Optional, Computed)
  node_labels = ['map', 'string'] (Optional, Computed)
  node_public_ip_enabled = bool (Optional)
  node_public_ip_prefix_id = string (Optional)
  node_taints = ['list', 'string'] (Optional)
  orchestrator_version = string (Optional, Computed)
  os_disk_size_gb = number (Optional, Computed)
  os_disk_type = string (Optional)
  os_sku = string (Optional, Computed)
  os_type = string (Optional)
  pod_subnet_id = string (Optional)
  priority = string (Optional)
  proximity_placement_group_id = string (Optional)
  scale_down_mode = string (Optional)
  snapshot_id = string (Optional)
  spot_max_price = number (Optional)
  tags = ['map', 'string'] (Optional)
  temporary_name_for_rotation = string (Optional)
  ultra_ssd_enabled = bool (Optional)
  vm_size = string (Optional, Computed)
  vnet_subnet_id = string (Optional)
  workload_runtime = string (Optional)
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  upgrade_settings block "list" (Optional) {
    max_surge = string (Required)
    drain_timeout_in_minutes = number (Optional)
    node_soak_duration_in_minutes = number (Optional)
  }

  windows_profile block "list" (Optional) {
    outbound_nat_enabled = bool (Optional)
  }
}
