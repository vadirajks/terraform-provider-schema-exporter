resource "google_dataproc_cluster" "name" {
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  graceful_decommission_timeout = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  cluster_config block "list" (Optional) {
    bucket = string (Computed)
    cluster_tier = string (Optional, Computed)
    staging_bucket = string (Optional)
    temp_bucket = string (Optional, Computed)

    autoscaling_config block "list" (Optional) {
      policy_uri = string (Required)
    }

    auxiliary_node_groups block "list" (Optional) {
      node_group_id = string (Optional, Computed)

      node_group block "list" (Required) {
        roles = ['list', 'string'] (Required)
        name = string (Computed)

        node_group_config block "list" (Optional) {
          instance_names = ['list', 'string'] (Computed)
          machine_type = string (Optional, Computed)
          min_cpu_platform = string (Optional, Computed)
          num_instances = number (Optional, Computed)

          accelerators block "set" (Optional) {
            accelerator_count = number (Required)
            accelerator_type = string (Required)
          }

          disk_config block "list" (Optional) {
            boot_disk_size_gb = number (Optional, Computed)
            boot_disk_type = string (Optional)
            local_ssd_interface = string (Optional)
            num_local_ssds = number (Optional, Computed)
          }
        }
      }
    }

    dataproc_metric_config block "list" (Optional) {

      metrics block "list" (Required) {
        metric_source = string (Required)
        metric_overrides = ['set', 'string'] (Optional)
      }
    }

    encryption_config block "list" (Optional) {
      kms_key_name = string (Required)
    }

    endpoint_config block "list" (Optional) {
      enable_http_port_access = bool (Required)
      http_ports = ['map', 'string'] (Computed)
    }

    gce_cluster_config block "list" (Optional) {
      internal_ip_only = bool (Optional)
      metadata = ['map', 'string'] (Optional, Computed)
      network = string (Optional, Computed)
      service_account = string (Optional)
      service_account_scopes = ['set', 'string'] (Optional, Computed)
      subnetwork = string (Optional)
      tags = ['set', 'string'] (Optional)
      zone = string (Optional, Computed)

      confidential_instance_config block "list" (Optional) {
        enable_confidential_compute = bool (Optional)
      }

      node_group_affinity block "list" (Optional) {
        node_group_uri = string (Required)
      }

      reservation_affinity block "list" (Optional) {
        consume_reservation_type = string (Optional)
        key = string (Optional)
        values = ['set', 'string'] (Optional)
      }

      shielded_instance_config block "list" (Optional) {
        enable_integrity_monitoring = bool (Optional)
        enable_secure_boot = bool (Optional)
        enable_vtpm = bool (Optional)
      }
    }

    initialization_action block "list" (Optional) {
      script = string (Required)
      timeout_sec = number (Optional)
    }

    lifecycle_config block "list" (Optional) {
      auto_delete_time = string (Optional)
      idle_delete_ttl = string (Optional)
      idle_start_time = string (Computed)
    }

    master_config block "list" (Optional) {
      image_uri = string (Optional, Computed)
      instance_names = ['list', 'string'] (Computed)
      machine_type = string (Optional, Computed)
      min_cpu_platform = string (Optional, Computed)
      num_instances = number (Optional, Computed)

      accelerators block "set" (Optional) {
        accelerator_count = number (Required)
        accelerator_type = string (Required)
      }

      disk_config block "list" (Optional) {
        boot_disk_size_gb = number (Optional, Computed)
        boot_disk_type = string (Optional)
        local_ssd_interface = string (Optional)
        num_local_ssds = number (Optional, Computed)
      }
    }

    metastore_config block "list" (Optional) {
      dataproc_metastore_service = string (Required)
    }

    preemptible_worker_config block "list" (Optional) {
      instance_names = ['list', 'string'] (Computed)
      num_instances = number (Optional, Computed)
      preemptibility = string (Optional)

      disk_config block "list" (Optional) {
        boot_disk_size_gb = number (Optional, Computed)
        boot_disk_type = string (Optional)
        local_ssd_interface = string (Optional)
        num_local_ssds = number (Optional, Computed)
      }

      instance_flexibility_policy block "list" (Optional) {
        instance_selection_results = ['list', ['object', {'machine_type': 'string', 'vm_count': 'number'}]] (Computed)

        instance_selection_list block "list" (Optional) {
          machine_types = ['list', 'string'] (Optional, Computed)
          rank = number (Optional, Computed)
        }

        provisioning_model_mix block "list" (Optional) {
          standard_capacity_base = number (Optional)
          standard_capacity_percent_above_base = number (Optional)
        }
      }
    }

    security_config block "list" (Optional) {

      identity_config block "list" (Optional) {
        user_service_account_mapping = ['map', 'string'] (Required)
      }

      kerberos_config block "list" (Optional) {
        kms_key_uri = string (Required)
        root_principal_password_uri = string (Required)
        cross_realm_trust_admin_server = string (Optional)
        cross_realm_trust_kdc = string (Optional)
        cross_realm_trust_realm = string (Optional)
        cross_realm_trust_shared_password_uri = string (Optional)
        enable_kerberos = bool (Optional)
        kdc_db_key_uri = string (Optional)
        key_password_uri = string (Optional)
        keystore_password_uri = string (Optional)
        keystore_uri = string (Optional)
        realm = string (Optional)
        tgt_lifetime_hours = number (Optional)
        truststore_password_uri = string (Optional)
        truststore_uri = string (Optional)
      }
    }

    software_config block "list" (Optional) {
      image_version = string (Optional, Computed)
      optional_components = ['set', 'string'] (Optional)
      override_properties = ['map', 'string'] (Optional)
      properties = ['map', 'string'] (Computed)
    }

    worker_config block "list" (Optional) {
      image_uri = string (Optional, Computed)
      instance_names = ['list', 'string'] (Computed)
      machine_type = string (Optional, Computed)
      min_cpu_platform = string (Optional, Computed)
      min_num_instances = number (Optional, Computed)
      num_instances = number (Optional, Computed)

      accelerators block "set" (Optional) {
        accelerator_count = number (Required)
        accelerator_type = string (Required)
      }

      disk_config block "list" (Optional) {
        boot_disk_size_gb = number (Optional, Computed)
        boot_disk_type = string (Optional)
        local_ssd_interface = string (Optional)
        num_local_ssds = number (Optional, Computed)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  virtual_cluster_config block "list" (Optional) {
    staging_bucket = string (Optional)

    auxiliary_services_config block "list" (Optional) {

      metastore_config block "list" (Optional) {
        dataproc_metastore_service = string (Optional)
      }

      spark_history_server_config block "list" (Optional) {
        dataproc_cluster = string (Optional)
      }
    }

    kubernetes_cluster_config block "list" (Optional) {
      kubernetes_namespace = string (Optional)

      gke_cluster_config block "list" (Required) {
        gke_cluster_target = string (Optional)

        node_pool_target block "list" (Optional) {
          node_pool = string (Required)
          roles = ['set', 'string'] (Required)

          node_pool_config block "list" (Optional) {
            locations = ['set', 'string'] (Required)

            autoscaling block "list" (Optional) {
              max_node_count = number (Optional)
              min_node_count = number (Optional)
            }

            config block "list" (Optional) {
              local_ssd_count = number (Optional)
              machine_type = string (Optional)
              min_cpu_platform = string (Optional)
              preemptible = bool (Optional)
              spot = bool (Optional)
            }
          }
        }
      }

      kubernetes_software_config block "list" (Required) {
        component_version = ['map', 'string'] (Required)
        properties = ['map', 'string'] (Optional, Computed)
      }
    }
  }
}
