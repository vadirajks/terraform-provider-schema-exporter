resource "google_dataproc_workflow_template" "name" {
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  dag_timeout = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  version = number (Optional, Computed)

  encryption_config block "list" (Optional) {
    kms_key = string (Optional)
  }

  jobs block "list" (Required) {
    step_id = string (Required)
    labels = ['map', 'string'] (Optional)
    prerequisite_step_ids = ['list', 'string'] (Optional)

    hadoop_job block "list" (Optional) {
      archive_uris = ['list', 'string'] (Optional)
      args = ['list', 'string'] (Optional)
      file_uris = ['list', 'string'] (Optional)
      jar_file_uris = ['list', 'string'] (Optional)
      main_class = string (Optional)
      main_jar_file_uri = string (Optional)
      properties = ['map', 'string'] (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }
    }

    hive_job block "list" (Optional) {
      continue_on_failure = bool (Optional)
      jar_file_uris = ['list', 'string'] (Optional)
      properties = ['map', 'string'] (Optional)
      query_file_uri = string (Optional)
      script_variables = ['map', 'string'] (Optional)

      query_list block "list" (Optional) {
        queries = ['list', 'string'] (Required)
      }
    }

    pig_job block "list" (Optional) {
      continue_on_failure = bool (Optional)
      jar_file_uris = ['list', 'string'] (Optional)
      properties = ['map', 'string'] (Optional)
      query_file_uri = string (Optional)
      script_variables = ['map', 'string'] (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }

      query_list block "list" (Optional) {
        queries = ['list', 'string'] (Required)
      }
    }

    presto_job block "list" (Optional) {
      client_tags = ['list', 'string'] (Optional)
      continue_on_failure = bool (Optional)
      output_format = string (Optional)
      properties = ['map', 'string'] (Optional)
      query_file_uri = string (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }

      query_list block "list" (Optional) {
        queries = ['list', 'string'] (Required)
      }
    }

    pyspark_job block "list" (Optional) {
      main_python_file_uri = string (Required)
      archive_uris = ['list', 'string'] (Optional)
      args = ['list', 'string'] (Optional)
      file_uris = ['list', 'string'] (Optional)
      jar_file_uris = ['list', 'string'] (Optional)
      properties = ['map', 'string'] (Optional)
      python_file_uris = ['list', 'string'] (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }
    }

    scheduling block "list" (Optional) {
      max_failures_per_hour = number (Optional)
      max_failures_total = number (Optional)
    }

    spark_job block "list" (Optional) {
      archive_uris = ['list', 'string'] (Optional)
      args = ['list', 'string'] (Optional)
      file_uris = ['list', 'string'] (Optional)
      jar_file_uris = ['list', 'string'] (Optional)
      main_class = string (Optional)
      main_jar_file_uri = string (Optional)
      properties = ['map', 'string'] (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }
    }

    spark_r_job block "list" (Optional) {
      main_r_file_uri = string (Required)
      archive_uris = ['list', 'string'] (Optional)
      args = ['list', 'string'] (Optional)
      file_uris = ['list', 'string'] (Optional)
      properties = ['map', 'string'] (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }
    }

    spark_sql_job block "list" (Optional) {
      jar_file_uris = ['list', 'string'] (Optional)
      properties = ['map', 'string'] (Optional)
      query_file_uri = string (Optional)
      script_variables = ['map', 'string'] (Optional)

      logging_config block "list" (Optional) {
        driver_log_levels = ['map', 'string'] (Optional)
      }

      query_list block "list" (Optional) {
        queries = ['list', 'string'] (Required)
      }
    }
  }

  parameters block "list" (Optional) {
    fields = ['list', 'string'] (Required)
    name = string (Required)
    description = string (Optional)

    validation block "list" (Optional) {

      regex block "list" (Optional) {
        regexes = ['list', 'string'] (Required)
      }

      values block "list" (Optional) {
        values = ['list', 'string'] (Required)
      }
    }
  }

  placement block "list" (Required) {

    cluster_selector block "list" (Optional) {
      cluster_labels = ['map', 'string'] (Required)
      zone = string (Optional, Computed)
    }

    managed_cluster block "list" (Optional) {
      cluster_name = string (Required)
      labels = ['map', 'string'] (Optional)

      config block "list" (Required) {
        staging_bucket = string (Optional)
        temp_bucket = string (Optional)

        autoscaling_config block "list" (Optional) {
          policy = string (Optional)
        }

        encryption_config block "list" (Optional) {
          gce_pd_kms_key_name = string (Optional)
        }

        endpoint_config block "list" (Optional) {
          enable_http_port_access = bool (Optional)
          http_ports = ['map', 'string'] (Computed)
        }

        gce_cluster_config block "list" (Optional) {
          internal_ip_only = bool (Optional, Computed)
          metadata = ['map', 'string'] (Optional)
          network = string (Optional)
          private_ipv6_google_access = string (Optional)
          service_account = string (Optional)
          service_account_scopes = ['list', 'string'] (Optional)
          subnetwork = string (Optional)
          tags = ['set', 'string'] (Optional)
          zone = string (Optional, Computed)

          node_group_affinity block "list" (Optional) {
            node_group = string (Required)
          }

          reservation_affinity block "list" (Optional) {
            consume_reservation_type = string (Optional)
            key = string (Optional)
            values = ['list', 'string'] (Optional)
          }

          shielded_instance_config block "list" (Optional) {
            enable_integrity_monitoring = bool (Optional)
            enable_secure_boot = bool (Optional)
            enable_vtpm = bool (Optional)
          }
        }

        initialization_actions block "list" (Optional) {
          executable_file = string (Optional)
          execution_timeout = string (Optional)
        }

        lifecycle_config block "list" (Optional) {
          auto_delete_time = string (Optional)
          auto_delete_ttl = string (Optional)
          idle_delete_ttl = string (Optional)
          idle_start_time = string (Computed)
        }

        master_config block "list" (Optional) {
          image = string (Optional)
          instance_names = ['list', 'string'] (Computed)
          is_preemptible = bool (Computed)
          machine_type = string (Optional)
          managed_group_config = ['list', ['object', {'instance_group_manager_name': 'string', 'instance_template_name': 'string'}]] (Computed)
          min_cpu_platform = string (Optional, Computed)
          num_instances = number (Optional)
          preemptibility = string (Optional)

          accelerators block "list" (Optional) {
            accelerator_count = number (Optional)
            accelerator_type = string (Optional)
          }

          disk_config block "list" (Optional) {
            boot_disk_size_gb = number (Optional)
            boot_disk_type = string (Optional)
            num_local_ssds = number (Optional, Computed)
          }
        }

        secondary_worker_config block "list" (Optional) {
          image = string (Optional)
          instance_names = ['list', 'string'] (Computed)
          is_preemptible = bool (Computed)
          machine_type = string (Optional)
          managed_group_config = ['list', ['object', {'instance_group_manager_name': 'string', 'instance_template_name': 'string'}]] (Computed)
          min_cpu_platform = string (Optional, Computed)
          num_instances = number (Optional)
          preemptibility = string (Optional)

          accelerators block "list" (Optional) {
            accelerator_count = number (Optional)
            accelerator_type = string (Optional)
          }

          disk_config block "list" (Optional) {
            boot_disk_size_gb = number (Optional)
            boot_disk_type = string (Optional)
            num_local_ssds = number (Optional, Computed)
          }
        }

        security_config block "list" (Optional) {

          kerberos_config block "list" (Optional) {
            cross_realm_trust_admin_server = string (Optional)
            cross_realm_trust_kdc = string (Optional)
            cross_realm_trust_realm = string (Optional)
            cross_realm_trust_shared_password = string (Optional)
            enable_kerberos = bool (Optional)
            kdc_db_key = string (Optional)
            key_password = string (Optional)
            keystore = string (Optional)
            keystore_password = string (Optional)
            kms_key = string (Optional)
            realm = string (Optional)
            root_principal_password = string (Optional)
            tgt_lifetime_hours = number (Optional)
            truststore = string (Optional)
            truststore_password = string (Optional)
          }
        }

        software_config block "list" (Optional) {
          image_version = string (Optional)
          optional_components = ['list', 'string'] (Optional)
          properties = ['map', 'string'] (Optional)
        }

        worker_config block "list" (Optional) {
          image = string (Optional)
          instance_names = ['list', 'string'] (Computed)
          is_preemptible = bool (Computed)
          machine_type = string (Optional)
          managed_group_config = ['list', ['object', {'instance_group_manager_name': 'string', 'instance_template_name': 'string'}]] (Computed)
          min_cpu_platform = string (Optional, Computed)
          num_instances = number (Optional)
          preemptibility = string (Optional)

          accelerators block "list" (Optional) {
            accelerator_count = number (Optional)
            accelerator_type = string (Optional)
          }

          disk_config block "list" (Optional) {
            boot_disk_size_gb = number (Optional)
            boot_disk_type = string (Optional)
            num_local_ssds = number (Optional, Computed)
          }
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
