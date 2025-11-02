resource "google_container_node_pool" "name" {
  cluster = string (Required)
  id = string (Optional, Computed)
  initial_node_count = number (Optional, Computed)
  instance_group_urls = ['list', 'string'] (Computed)
  location = string (Optional, Computed)
  managed_instance_group_urls = ['list', 'string'] (Computed)
  max_pods_per_node = number (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  node_count = number (Optional, Computed)
  node_locations = ['set', 'string'] (Optional, Computed)
  operation = string (Computed)
  project = string (Optional, Computed)
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
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
