resource "google_container_cluster" "name" {
  name = string (Required)
  allow_net_admin = bool (Optional)
  cluster_ipv4_cidr = string (Optional, Computed)
  datapath_provider = string (Optional, Computed)
  default_max_pods_per_node = number (Optional, Computed)
  deletion_protection = bool (Optional)
  description = string (Optional)
  disable_l4_lb_firewall_reconciliation = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  enable_autopilot = bool (Optional)
  enable_cilium_clusterwide_network_policy = bool (Optional)
  enable_fqdn_network_policy = bool (Optional)
  enable_intranode_visibility = bool (Optional, Computed)
  enable_kubernetes_alpha = bool (Optional)
  enable_l4_ilb_subsetting = bool (Optional)
  enable_legacy_abac = bool (Optional)
  enable_multi_networking = bool (Optional)
  enable_shielded_nodes = bool (Optional)
  enable_tpu = bool (Optional)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  in_transit_encryption_config = string (Optional)
  initial_node_count = number (Optional)
  label_fingerprint = string (Computed)
  location = string (Optional, Computed)
  logging_service = string (Optional, Computed)
  master_version = string (Computed)
  min_master_version = string (Optional)
  monitoring_service = string (Optional, Computed)
  network = string (Optional)
  networking_mode = string (Optional, Computed)
  node_locations = ['set', 'string'] (Optional, Computed)
  node_version = string (Optional, Computed)
  operation = string (Computed)
  private_ipv6_google_access = string (Optional, Computed)
  project = string (Optional, Computed)
  remove_default_node_pool = bool (Optional)
  resource_labels = ['map', 'string'] (Optional)
  self_link = string (Computed)
  services_ipv4_cidr = string (Computed)
  subnetwork = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  tpu_ipv4_cidr_block = string (Computed)

  addons_config block "list" (Optional) {

    cloudrun_config block "list" (Optional) {
      disabled = bool (Required)
      load_balancer_type = string (Optional)
    }

    config_connector_config block "list" (Optional) {
      enabled = bool (Required)
    }

    dns_cache_config block "list" (Optional) {
      enabled = bool (Required)
    }

    gce_persistent_disk_csi_driver_config block "list" (Optional) {
      enabled = bool (Required)
    }

    gcp_filestore_csi_driver_config block "list" (Optional) {
      enabled = bool (Required)
    }

    gcs_fuse_csi_driver_config block "list" (Optional) {
      enabled = bool (Required)
    }

    gke_backup_agent_config block "list" (Optional) {
      enabled = bool (Required)
    }

    horizontal_pod_autoscaling block "list" (Optional) {
      disabled = bool (Required)
    }

    http_load_balancing block "list" (Optional) {
      disabled = bool (Required)
    }

    lustre_csi_driver_config block "list" (Optional) {
      enabled = bool (Required)
      enable_legacy_lustre_port = bool (Optional)
    }

    network_policy_config block "list" (Optional) {
      disabled = bool (Required)
    }

    parallelstore_csi_driver_config block "list" (Optional) {
      enabled = bool (Required)
    }

    ray_operator_config block "list" (Optional) {
      enabled = bool (Required)

      ray_cluster_logging_config block "list" (Optional) {
        enabled = bool (Required)
      }

      ray_cluster_monitoring_config block "list" (Optional) {
        enabled = bool (Required)
      }
    }

    stateful_ha_config block "list" (Optional) {
      enabled = bool (Required)
    }
  }

  anonymous_authentication_config block "list" (Optional) {
    mode = string (Required)
  }

  authenticator_groups_config block "list" (Optional) {
    security_group = string (Required)
  }

  binary_authorization block "list" (Optional) {
    enabled = bool (Optional)
    evaluation_mode = string (Optional, Computed)
  }

  cluster_autoscaling block "list" (Optional) {
    auto_provisioning_locations = ['list', 'string'] (Optional, Computed)
    autoscaling_profile = string (Optional)
    default_compute_class_enabled = bool (Optional)
    enabled = bool (Optional, Computed)

    auto_provisioning_defaults block "list" (Optional) {
      boot_disk_kms_key = string (Optional)
      disk_size = number (Optional)
      disk_type = string (Optional)
      image_type = string (Optional)
      min_cpu_platform = string (Optional)
      oauth_scopes = ['list', 'string'] (Optional, Computed)
      service_account = string (Optional)

      management block "list" (Optional) {
        auto_repair = bool (Optional, Computed)
        auto_upgrade = bool (Optional, Computed)
        upgrade_options = ['list', ['object', {'auto_upgrade_start_time': 'string', 'description': 'string'}]] (Computed)
      }

      shielded_instance_config block "list" (Optional) {
        enable_integrity_monitoring = bool (Optional)
        enable_secure_boot = bool (Optional)
      }

      upgrade_settings block "list" (Optional) {
        max_surge = number (Optional)
        max_unavailable = number (Optional)
        strategy = string (Optional, Computed)

        blue_green_settings block "list" (Optional) {
          node_pool_soak_duration = string (Optional, Computed)

          standard_rollout_policy block "list" (Optional) {
            batch_node_count = number (Optional, Computed)
            batch_percentage = number (Optional, Computed)
            batch_soak_duration = string (Optional)
          }
        }
      }
    }

    resource_limits block "list" (Optional) {
      maximum = number (Required)
      resource_type = string (Required)
      minimum = number (Optional)
    }
  }

  confidential_nodes block "list" (Optional) {
    enabled = bool (Required)
    confidential_instance_type = string (Optional)
  }

  control_plane_endpoints_config block "list" (Optional) {

    dns_endpoint_config block "list" (Optional) {
      allow_external_traffic = bool (Optional)
      enable_k8s_certs_via_dns = bool (Optional)
      enable_k8s_tokens_via_dns = bool (Optional)
      endpoint = string (Optional, Computed)
    }

    ip_endpoints_config block "list" (Optional) {
      enabled = bool (Optional)
    }
  }

  cost_management_config block "list" (Optional) {
    enabled = bool (Required)
  }

  database_encryption block "list" (Optional) {
    state = string (Required)
    key_name = string (Optional)
  }

  default_snat_status block "list" (Optional) {
    disabled = bool (Required)
  }

  dns_config block "list" (Optional) {
    additive_vpc_scope_dns_domain = string (Optional)
    cluster_dns = string (Optional)
    cluster_dns_domain = string (Optional)
    cluster_dns_scope = string (Optional)
  }

  enable_k8s_beta_apis block "list" (Optional) {
    enabled_apis = ['set', 'string'] (Required)
  }

  enterprise_config block "list" (Optional) {
    cluster_tier = string (Computed)
    desired_tier = string (Optional, Computed)
  }

  fleet block "list" (Optional) {
    membership = string (Computed)
    membership_id = string (Computed)
    membership_location = string (Computed)
    membership_type = string (Optional)
    pre_registered = bool (Computed)
    project = string (Optional)
  }

  gateway_api_config block "list" (Optional) {
    channel = string (Required)
  }

  gke_auto_upgrade_config block "list" (Optional) {
    patch_mode = string (Required)
  }

  identity_service_config block "list" (Optional) {
    enabled = bool (Optional)
  }

  ip_allocation_policy block "list" (Optional) {
    cluster_ipv4_cidr_block = string (Optional, Computed)
    cluster_secondary_range_name = string (Optional, Computed)
    services_ipv4_cidr_block = string (Optional, Computed)
    services_secondary_range_name = string (Optional, Computed)
    stack_type = string (Optional)

    additional_ip_ranges_config block "list" (Optional) {
      subnetwork = string (Required)
      pod_ipv4_range_names = ['list', 'string'] (Optional)
    }

    additional_pod_ranges_config block "list" (Optional) {
      pod_range_names = ['set', 'string'] (Required)
    }

    auto_ipam_config block "list" (Optional) {
      enabled = bool (Required)
    }

    pod_cidr_overprovision_config block "list" (Optional) {
      disabled = bool (Required)
    }
  }

  logging_config block "list" (Optional) {
    enable_components = ['list', 'string'] (Required)
  }

  maintenance_policy block "list" (Optional) {

    daily_maintenance_window block "list" (Optional) {
      start_time = string (Required)
      duration = string (Computed)
    }

    maintenance_exclusion block "set" (Optional) {
      end_time = string (Required)
      exclusion_name = string (Required)
      start_time = string (Required)

      exclusion_options block "list" (Optional) {
        scope = string (Required)
      }
    }

    recurring_window block "list" (Optional) {
      end_time = string (Required)
      recurrence = string (Required)
      start_time = string (Required)
    }
  }

  master_auth block "list" (Optional) {
    client_certificate = string (Computed)
    client_key = string (Computed)
    cluster_ca_certificate = string (Computed)

    client_certificate_config block "list" (Required) {
      issue_client_certificate = bool (Required)
    }
  }

  master_authorized_networks_config block "list" (Optional) {
    gcp_public_cidrs_access_enabled = bool (Optional, Computed)
    private_endpoint_enforcement_enabled = bool (Optional, Computed)

    cidr_blocks block "set" (Optional) {
      cidr_block = string (Required)
      display_name = string (Optional)
    }
  }

  mesh_certificates block "list" (Optional) {
    enable_certificates = bool (Required)
  }

  monitoring_config block "list" (Optional) {
    enable_components = ['list', 'string'] (Optional, Computed)

    advanced_datapath_observability_config block "list" (Optional) {
      enable_metrics = bool (Required)
      enable_relay = bool (Required)
    }

    managed_prometheus block "list" (Optional) {
      enabled = bool (Required)

      auto_monitoring_config block "list" (Optional) {
        scope = string (Required)
      }
    }
  }

  network_performance_config block "list" (Optional) {
    total_egress_bandwidth_tier = string (Required)
  }

  network_policy block "list" (Optional) {
    enabled = bool (Required)
    provider = string (Optional)
  }

  node_config block "list" (Optional) {
    boot_disk_kms_key = string (Optional)
    disk_size_gb = number (Optional, Computed)
    disk_type = string (Optional, Computed)
    effective_taints = ['list', ['object', {'effect': 'string', 'key': 'string', 'value': 'string'}]] (Computed)
    enable_confidential_storage = bool (Optional)
    flex_start = bool (Optional)
    image_type = string (Optional, Computed)
    labels = ['map', 'string'] (Optional, Computed)
    local_ssd_count = number (Optional, Computed)
    local_ssd_encryption_mode = string (Optional)
    logging_variant = string (Optional, Computed)
    machine_type = string (Optional, Computed)
    max_run_duration = string (Optional)
    metadata = ['map', 'string'] (Optional, Computed)
    min_cpu_platform = string (Optional, Computed)
    node_group = string (Optional)
    oauth_scopes = ['set', 'string'] (Optional, Computed)
    preemptible = bool (Optional)
    resource_labels = ['map', 'string'] (Optional)
    resource_manager_tags = ['map', 'string'] (Optional)
    service_account = string (Optional, Computed)
    spot = bool (Optional)
    storage_pools = ['list', 'string'] (Optional)
    tags = ['list', 'string'] (Optional)

    advanced_machine_features block "list" (Optional) {
      threads_per_core = number (Required)
      enable_nested_virtualization = bool (Optional)
      performance_monitoring_unit = string (Optional)
    }

    boot_disk block "list" (Optional) {
      disk_type = string (Optional, Computed)
      provisioned_iops = number (Optional, Computed)
      provisioned_throughput = number (Optional, Computed)
      size_gb = number (Optional, Computed)
    }

    confidential_nodes block "list" (Optional) {
      enabled = bool (Required)
      confidential_instance_type = string (Optional)
    }

    containerd_config block "list" (Optional) {

      private_registry_access_config block "list" (Optional) {
        enabled = bool (Required)

        certificate_authority_domain_config block "list" (Optional) {
          fqdns = ['list', 'string'] (Required)

          gcp_secret_manager_certificate_config block "list" (Required) {
            secret_uri = string (Required)
          }
        }
      }
    }

    ephemeral_storage_local_ssd_config block "list" (Optional) {
      local_ssd_count = number (Required)
      data_cache_count = number (Optional)
    }

    fast_socket block "list" (Optional) {
      enabled = bool (Required)
    }

    gcfs_config block "list" (Optional) {
      enabled = bool (Required)
    }

    guest_accelerator block "list" (Optional) {
      count = number (Required)
      type = string (Required)
      gpu_partition_size = string (Optional)

      gpu_driver_installation_config block "list" (Optional) {
        gpu_driver_version = string (Required)
      }

      gpu_sharing_config block "list" (Optional) {
        gpu_sharing_strategy = string (Required)
        max_shared_clients_per_gpu = number (Required)
      }
    }

    gvnic block "list" (Optional) {
      enabled = bool (Required)
    }

    host_maintenance_policy block "list" (Optional) {
      maintenance_interval = string (Required)
    }

    kubelet_config block "list" (Optional) {
      allowed_unsafe_sysctls = ['list', 'string'] (Optional)
      container_log_max_files = number (Optional)
      container_log_max_size = string (Optional)
      cpu_cfs_quota = bool (Optional, Computed)
      cpu_cfs_quota_period = string (Optional)
      cpu_manager_policy = string (Optional)
      eviction_max_pod_grace_period_seconds = number (Optional)
      image_gc_high_threshold_percent = number (Optional)
      image_gc_low_threshold_percent = number (Optional)
      image_maximum_gc_age = string (Optional)
      image_minimum_gc_age = string (Optional)
      insecure_kubelet_readonly_port_enabled = string (Optional, Computed)
      max_parallel_image_pulls = number (Optional, Computed)
      pod_pids_limit = number (Optional)
      single_process_oom_kill = bool (Optional)

      eviction_minimum_reclaim block "list" (Optional) {
        imagefs_available = string (Optional)
        imagefs_inodes_free = string (Optional)
        memory_available = string (Optional)
        nodefs_available = string (Optional)
        nodefs_inodes_free = string (Optional)
        pid_available = string (Optional)
      }

      eviction_soft block "list" (Optional) {
        imagefs_available = string (Optional)
        imagefs_inodes_free = string (Optional)
        memory_available = string (Optional)
        nodefs_available = string (Optional)
        nodefs_inodes_free = string (Optional)
        pid_available = string (Optional)
      }

      eviction_soft_grace_period block "list" (Optional) {
        imagefs_available = string (Optional)
        imagefs_inodes_free = string (Optional)
        memory_available = string (Optional)
        nodefs_available = string (Optional)
        nodefs_inodes_free = string (Optional)
        pid_available = string (Optional)
      }

      memory_manager block "list" (Optional) {
        policy = string (Optional, Computed)
      }

      topology_manager block "list" (Optional) {
        policy = string (Optional, Computed)
        scope = string (Optional, Computed)
      }
    }

    linux_node_config block "list" (Optional) {
      cgroup_mode = string (Optional, Computed)
      sysctls = ['map', 'string'] (Optional)
      transparent_hugepage_defrag = string (Optional)
      transparent_hugepage_enabled = string (Optional, Computed)

      hugepages_config block "list" (Optional) {
        hugepage_size_1g = number (Optional)
        hugepage_size_2m = number (Optional)
      }
    }

    local_nvme_ssd_block_config block "list" (Optional) {
      local_ssd_count = number (Required)
    }

    reservation_affinity block "list" (Optional) {
      consume_reservation_type = string (Required)
      key = string (Optional)
      values = ['set', 'string'] (Optional)
    }

    secondary_boot_disks block "list" (Optional) {
      disk_image = string (Required)
      mode = string (Optional)
    }

    shielded_instance_config block "list" (Optional) {
      enable_integrity_monitoring = bool (Optional)
      enable_secure_boot = bool (Optional)
    }

    sole_tenant_config block "list" (Optional) {
      min_node_cpus = number (Optional)

      node_affinity block "set" (Required) {
        key = string (Required)
        operator = string (Required)
        values = ['list', 'string'] (Required)
      }
    }

    taint block "list" (Optional) {
      effect = string (Required)
      key = string (Required)
      value = string (Required)
    }

    windows_node_config block "list" (Optional) {
      osversion = string (Optional)
    }

    workload_metadata_config block "list" (Optional) {
      mode = string (Required)
    }
  }

  node_pool block "list" (Optional) {
    initial_node_count = number (Optional, Computed)
    instance_group_urls = ['list', 'string'] (Computed)
    managed_instance_group_urls = ['list', 'string'] (Computed)
    max_pods_per_node = number (Optional, Computed)
    name = string (Optional, Computed)
    name_prefix = string (Optional, Computed)
    node_count = number (Optional, Computed)
    node_locations = ['set', 'string'] (Optional, Computed)
    version = string (Optional, Computed)

    autoscaling block "list" (Optional) {
      location_policy = string (Optional, Computed)
      max_node_count = number (Optional)
      min_node_count = number (Optional)
      total_max_node_count = number (Optional)
      total_min_node_count = number (Optional)
    }

    management block "list" (Optional) {
      auto_repair = bool (Optional)
      auto_upgrade = bool (Optional)
    }

    network_config block "list" (Optional) {
      create_pod_range = bool (Optional)
      enable_private_nodes = bool (Optional, Computed)
      pod_ipv4_cidr_block = string (Optional, Computed)
      pod_range = string (Optional, Computed)
      subnetwork = string (Computed)

      additional_node_network_configs block "list" (Optional) {
        network = string (Optional)
        subnetwork = string (Optional)
      }

      additional_pod_network_configs block "list" (Optional) {
        max_pods_per_node = number (Optional, Computed)
        secondary_pod_range = string (Optional)
        subnetwork = string (Optional)
      }

      network_performance_config block "list" (Optional) {
        total_egress_bandwidth_tier = string (Required)
      }

      pod_cidr_overprovision_config block "list" (Optional) {
        disabled = bool (Required)
      }
    }

    node_config block "list" (Optional) {
      boot_disk_kms_key = string (Optional)
      disk_size_gb = number (Optional, Computed)
      disk_type = string (Optional, Computed)
      effective_taints = ['list', ['object', {'effect': 'string', 'key': 'string', 'value': 'string'}]] (Computed)
      enable_confidential_storage = bool (Optional)
      flex_start = bool (Optional)
      image_type = string (Optional, Computed)
      labels = ['map', 'string'] (Optional, Computed)
      local_ssd_count = number (Optional, Computed)
      local_ssd_encryption_mode = string (Optional)
      logging_variant = string (Optional, Computed)
      machine_type = string (Optional, Computed)
      max_run_duration = string (Optional)
      metadata = ['map', 'string'] (Optional, Computed)
      min_cpu_platform = string (Optional, Computed)
      node_group = string (Optional)
      oauth_scopes = ['set', 'string'] (Optional, Computed)
      preemptible = bool (Optional)
      resource_labels = ['map', 'string'] (Optional)
      resource_manager_tags = ['map', 'string'] (Optional)
      service_account = string (Optional, Computed)
      spot = bool (Optional)
      storage_pools = ['list', 'string'] (Optional)
      tags = ['list', 'string'] (Optional)

      advanced_machine_features block "list" (Optional) {
        threads_per_core = number (Required)
        enable_nested_virtualization = bool (Optional)
        performance_monitoring_unit = string (Optional)
      }

      boot_disk block "list" (Optional) {
        disk_type = string (Optional, Computed)
        provisioned_iops = number (Optional, Computed)
        provisioned_throughput = number (Optional, Computed)
        size_gb = number (Optional, Computed)
      }

      confidential_nodes block "list" (Optional) {
        enabled = bool (Required)
        confidential_instance_type = string (Optional)
      }

      containerd_config block "list" (Optional) {

        private_registry_access_config block "list" (Optional) {
          enabled = bool (Required)

          certificate_authority_domain_config block "list" (Optional) {
            fqdns = ['list', 'string'] (Required)

            gcp_secret_manager_certificate_config block "list" (Required) {
              secret_uri = string (Required)
            }
          }
        }
      }

      ephemeral_storage_local_ssd_config block "list" (Optional) {
        local_ssd_count = number (Required)
        data_cache_count = number (Optional)
      }

      fast_socket block "list" (Optional) {
        enabled = bool (Required)
      }

      gcfs_config block "list" (Optional) {
        enabled = bool (Required)
      }

      guest_accelerator block "list" (Optional) {
        count = number (Required)
        type = string (Required)
        gpu_partition_size = string (Optional)

        gpu_driver_installation_config block "list" (Optional) {
          gpu_driver_version = string (Required)
        }

        gpu_sharing_config block "list" (Optional) {
          gpu_sharing_strategy = string (Required)
          max_shared_clients_per_gpu = number (Required)
        }
      }

      gvnic block "list" (Optional) {
        enabled = bool (Required)
      }

      host_maintenance_policy block "list" (Optional) {
        maintenance_interval = string (Required)
      }

      kubelet_config block "list" (Optional) {
        allowed_unsafe_sysctls = ['list', 'string'] (Optional)
        container_log_max_files = number (Optional)
        container_log_max_size = string (Optional)
        cpu_cfs_quota = bool (Optional, Computed)
        cpu_cfs_quota_period = string (Optional)
        cpu_manager_policy = string (Optional)
        eviction_max_pod_grace_period_seconds = number (Optional)
        image_gc_high_threshold_percent = number (Optional)
        image_gc_low_threshold_percent = number (Optional)
        image_maximum_gc_age = string (Optional)
        image_minimum_gc_age = string (Optional)
        insecure_kubelet_readonly_port_enabled = string (Optional, Computed)
        max_parallel_image_pulls = number (Optional, Computed)
        pod_pids_limit = number (Optional)
        single_process_oom_kill = bool (Optional)

        eviction_minimum_reclaim block "list" (Optional) {
          imagefs_available = string (Optional)
          imagefs_inodes_free = string (Optional)
          memory_available = string (Optional)
          nodefs_available = string (Optional)
          nodefs_inodes_free = string (Optional)
          pid_available = string (Optional)
        }

        eviction_soft block "list" (Optional) {
          imagefs_available = string (Optional)
          imagefs_inodes_free = string (Optional)
          memory_available = string (Optional)
          nodefs_available = string (Optional)
          nodefs_inodes_free = string (Optional)
          pid_available = string (Optional)
        }

        eviction_soft_grace_period block "list" (Optional) {
          imagefs_available = string (Optional)
          imagefs_inodes_free = string (Optional)
          memory_available = string (Optional)
          nodefs_available = string (Optional)
          nodefs_inodes_free = string (Optional)
          pid_available = string (Optional)
        }

        memory_manager block "list" (Optional) {
          policy = string (Optional, Computed)
        }

        topology_manager block "list" (Optional) {
          policy = string (Optional, Computed)
          scope = string (Optional, Computed)
        }
      }

      linux_node_config block "list" (Optional) {
        cgroup_mode = string (Optional, Computed)
        sysctls = ['map', 'string'] (Optional)
        transparent_hugepage_defrag = string (Optional)
        transparent_hugepage_enabled = string (Optional, Computed)

        hugepages_config block "list" (Optional) {
          hugepage_size_1g = number (Optional)
          hugepage_size_2m = number (Optional)
        }
      }

      local_nvme_ssd_block_config block "list" (Optional) {
        local_ssd_count = number (Required)
      }

      reservation_affinity block "list" (Optional) {
        consume_reservation_type = string (Required)
        key = string (Optional)
        values = ['set', 'string'] (Optional)
      }

      secondary_boot_disks block "list" (Optional) {
        disk_image = string (Required)
        mode = string (Optional)
      }

      shielded_instance_config block "list" (Optional) {
        enable_integrity_monitoring = bool (Optional)
        enable_secure_boot = bool (Optional)
      }

      sole_tenant_config block "list" (Optional) {
        min_node_cpus = number (Optional)

        node_affinity block "set" (Required) {
          key = string (Required)
          operator = string (Required)
          values = ['list', 'string'] (Required)
        }
      }

      taint block "list" (Optional) {
        effect = string (Required)
        key = string (Required)
        value = string (Required)
      }

      windows_node_config block "list" (Optional) {
        osversion = string (Optional)
      }

      workload_metadata_config block "list" (Optional) {
        mode = string (Required)
      }
    }

    placement_policy block "list" (Optional) {
      type = string (Required)
      policy_name = string (Optional)
      tpu_topology = string (Optional)
    }

    queued_provisioning block "list" (Optional) {
      enabled = bool (Required)
    }

    upgrade_settings block "list" (Optional) {
      max_surge = number (Optional, Computed)
      max_unavailable = number (Optional, Computed)
      strategy = string (Optional)

      blue_green_settings block "list" (Optional) {
        node_pool_soak_duration = string (Optional, Computed)

        standard_rollout_policy block "list" (Required) {
          batch_node_count = number (Optional, Computed)
          batch_percentage = number (Optional, Computed)
          batch_soak_duration = string (Optional, Computed)
        }
      }
    }
  }

  node_pool_auto_config block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)

    linux_node_config block "list" (Optional) {
      cgroup_mode = string (Optional, Computed)
    }

    network_tags block "list" (Optional) {
      tags = ['list', 'string'] (Optional)
    }

    node_kubelet_config block "list" (Optional) {
      insecure_kubelet_readonly_port_enabled = string (Optional, Computed)
    }
  }

  node_pool_defaults block "list" (Optional) {

    node_config_defaults block "list" (Optional) {
      insecure_kubelet_readonly_port_enabled = string (Optional, Computed)
      logging_variant = string (Optional, Computed)

      containerd_config block "list" (Optional) {

        private_registry_access_config block "list" (Optional) {
          enabled = bool (Required)

          certificate_authority_domain_config block "list" (Optional) {
            fqdns = ['list', 'string'] (Required)

            gcp_secret_manager_certificate_config block "list" (Required) {
              secret_uri = string (Required)
            }
          }
        }
      }

      gcfs_config block "list" (Optional) {
        enabled = bool (Required)
      }
    }
  }

  notification_config block "list" (Optional) {

    pubsub block "list" (Required) {
      enabled = bool (Required)
      topic = string (Optional)

      filter block "list" (Optional) {
        event_type = ['list', 'string'] (Required)
      }
    }
  }

  pod_autoscaling block "list" (Optional) {
    hpa_profile = string (Required)
  }

  private_cluster_config block "list" (Optional) {
    enable_private_endpoint = bool (Optional)
    enable_private_nodes = bool (Optional)
    master_ipv4_cidr_block = string (Optional, Computed)
    peering_name = string (Computed)
    private_endpoint = string (Computed)
    private_endpoint_subnetwork = string (Optional)
    public_endpoint = string (Computed)

    master_global_access_config block "list" (Optional) {
      enabled = bool (Required)
    }
  }

  rbac_binding_config block "list" (Optional) {
    enable_insecure_binding_system_authenticated = bool (Optional)
    enable_insecure_binding_system_unauthenticated = bool (Optional)
  }

  release_channel block "list" (Optional) {
    channel = string (Required)
  }

  resource_usage_export_config block "list" (Optional) {
    enable_network_egress_metering = bool (Optional)
    enable_resource_consumption_metering = bool (Optional)

    bigquery_destination block "list" (Required) {
      dataset_id = string (Required)
    }
  }

  secret_manager_config block "list" (Optional) {
    enabled = bool (Required)

    rotation_config block "list" (Optional) {
      enabled = bool (Required)
      rotation_interval = string (Optional, Computed)
    }
  }

  security_posture_config block "list" (Optional) {
    mode = string (Optional, Computed)
    vulnerability_mode = string (Optional, Computed)
  }

  service_external_ips_config block "list" (Optional) {
    enabled = bool (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user_managed_keys_config block "list" (Optional) {
    aggregation_ca = string (Optional)
    cluster_ca = string (Optional)
    control_plane_disk_encryption_key = string (Optional)
    etcd_api_ca = string (Optional)
    etcd_peer_ca = string (Optional)
    gkeops_etcd_backup_encryption_key = string (Optional)
    service_account_signing_keys = ['set', 'string'] (Optional)
    service_account_verification_keys = ['set', 'string'] (Optional)
  }

  vertical_pod_autoscaling block "list" (Optional) {
    enabled = bool (Required)
  }

  workload_identity_config block "list" (Optional) {
    workload_pool = string (Optional)
  }
}
