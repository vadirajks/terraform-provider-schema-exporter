resource "google_gke_hub_feature" "name" {
  location = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional)
  project = string (Optional, Computed)
  resource_state = ['list', ['object', {'has_resources': 'bool', 'state': 'string'}]] (Computed)
  state = ['list', ['object', {'state': ['list', ['object', {'code': 'string', 'description': 'string', 'update_time': 'string'}]]}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  fleet_default_member_config block "list" (Optional) {

    configmanagement block "list" (Optional) {
      management = string (Optional)
      version = string (Optional)

      config_sync block "list" (Optional) {
        enabled = bool (Optional)
        metrics_gcp_service_account_email = string (Optional)
        prevent_drift = bool (Optional)
        source_format = string (Optional)

        git block "list" (Optional) {
          secret_type = string (Required)
          gcp_service_account_email = string (Optional)
          https_proxy = string (Optional)
          policy_dir = string (Optional)
          sync_branch = string (Optional)
          sync_repo = string (Optional)
          sync_rev = string (Optional)
          sync_wait_secs = string (Optional)
        }

        oci block "list" (Optional) {
          secret_type = string (Required)
          gcp_service_account_email = string (Optional)
          policy_dir = string (Optional)
          sync_repo = string (Optional)
          sync_wait_secs = string (Optional)
          version = string (Optional)
        }
      }
    }

    mesh block "list" (Optional) {
      management = string (Required)
    }

    policycontroller block "list" (Optional) {
      version = string (Optional, Computed)

      policy_controller_hub_config block "list" (Required) {
        install_spec = string (Required)
        audit_interval_seconds = number (Optional)
        constraint_violation_limit = number (Optional)
        exemptable_namespaces = ['list', 'string'] (Optional)
        log_denies_enabled = bool (Optional)
        mutation_enabled = bool (Optional)
        referential_rules_enabled = bool (Optional)

        deployment_configs block "set" (Optional) {
          component = string (Required)
          pod_affinity = string (Optional, Computed)
          replica_count = number (Optional, Computed)

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

          pod_toleration block "list" (Optional) {
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
            bundle = string (Required)
            exempted_namespaces = ['list', 'string'] (Optional)
          }

          template_library block "list" (Optional) {
            installation = string (Optional)
          }
        }
      }
    }
  }

  spec block "list" (Optional) {

    clusterupgrade block "list" (Optional) {
      upstream_fleets = ['list', 'string'] (Required)

      gke_upgrade_overrides block "list" (Optional) {

        post_conditions block "list" (Required) {
          soaking = string (Required)
        }

        upgrade block "list" (Required) {
          name = string (Required)
          version = string (Required)
        }
      }

      post_conditions block "list" (Optional) {
        soaking = string (Required)
      }
    }

    fleetobservability block "list" (Optional) {

      logging_config block "list" (Optional) {

        default_config block "list" (Optional) {
          mode = string (Optional)
        }

        fleet_scope_logs_config block "list" (Optional) {
          mode = string (Optional)
        }
      }
    }

    multiclusteringress block "list" (Optional) {
      config_membership = string (Required)
    }

    rbacrolebindingactuation block "list" (Optional) {
      allowed_custom_roles = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
