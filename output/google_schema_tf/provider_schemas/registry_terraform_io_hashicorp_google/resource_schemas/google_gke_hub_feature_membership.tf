resource "google_gke_hub_feature_membership" "name" {
  feature = string (Required)
  location = string (Required)
  membership = string (Required)
  id = string (Optional, Computed)
  membership_location = string (Optional)
  project = string (Optional, Computed)

  configmanagement block "list" (Optional) {
    management = string (Optional, Computed)
    version = string (Optional, Computed)

    config_sync block "list" (Optional) {
      enabled = bool (Optional)
      metrics_gcp_service_account_email = string (Optional)
      prevent_drift = bool (Optional, Computed)
      source_format = string (Optional)
      stop_syncing = bool (Optional)

      deployment_overrides block "list" (Optional) {
        deployment_name = string (Optional)
        deployment_namespace = string (Optional)

        containers block "list" (Optional) {
          container_name = string (Optional)
          cpu_limit = string (Optional)
          cpu_request = string (Optional)
          memory_limit = string (Optional)
          memory_request = string (Optional)
        }
      }

      git block "list" (Optional) {
        gcp_service_account_email = string (Optional)
        https_proxy = string (Optional)
        policy_dir = string (Optional)
        secret_type = string (Optional)
        sync_branch = string (Optional)
        sync_repo = string (Optional)
        sync_rev = string (Optional)
        sync_wait_secs = string (Optional)
      }

      oci block "list" (Optional) {
        gcp_service_account_email = string (Optional)
        policy_dir = string (Optional)
        secret_type = string (Optional)
        sync_repo = string (Optional)
        sync_wait_secs = string (Optional)
      }
    }

    hierarchy_controller block "list" (Optional) {
      enable_hierarchical_resource_quota = bool (Optional)
      enable_pod_tree_labels = bool (Optional)
      enabled = bool (Optional)
    }

    policy_controller block "list" (Optional) {
      audit_interval_seconds = string (Optional)
      enabled = bool (Optional)
      exemptable_namespaces = ['list', 'string'] (Optional)
      log_denies_enabled = bool (Optional)
      mutation_enabled = bool (Optional)
      referential_rules_enabled = bool (Optional)
      template_library_installed = bool (Optional)

      monitoring block "list" (Optional) {
        backends = ['list', 'string'] (Optional, Computed)
      }
    }
  }

  mesh block "list" (Optional) {
    control_plane = string (Optional)
    management = string (Optional)
  }

  policycontroller block "list" (Optional) {
    version = string (Optional, Computed)

    policy_controller_hub_config block "list" (Required) {
      audit_interval_seconds = number (Optional)
      constraint_violation_limit = number (Optional)
      exemptable_namespaces = ['list', 'string'] (Optional)
      install_spec = string (Optional)
      log_denies_enabled = bool (Optional)
      mutation_enabled = bool (Optional)
      referential_rules_enabled = bool (Optional)

      deployment_configs block "set" (Optional) {
        component_name = string (Required)
        pod_affinity = string (Optional)
        replica_count = number (Optional)

        container_resources block "list" (Optional) {

          limits block "list" (Optional) {
            cpu = string (Optional)
            memory = string (Optional)
          }

          requests block "list" (Optional) {
            cpu = string (Optional)
            memory = string (Optional)
          }
        }

        pod_tolerations block "list" (Optional) {
          effect = string (Optional)
          key = string (Optional)
          operator = string (Optional)
          value = string (Optional)
        }
      }

      monitoring block "list" (Optional) {
        backends = ['list', 'string'] (Optional, Computed)
      }

      policy_content block "list" (Optional) {

        bundles block "set" (Optional) {
          bundle_name = string (Required)
          exempted_namespaces = ['list', 'string'] (Optional)
        }

        template_library block "list" (Optional) {
          installation = string (Optional)
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
