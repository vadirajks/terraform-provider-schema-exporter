resource "google_gke_backup_restore_plan" "name" {
  backup_plan = string (Required)
  cluster = string (Required)
  location = string (Required)
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  state_reason = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)

  restore_config block "list" (Required) {
    all_namespaces = bool (Optional)
    cluster_resource_conflict_policy = string (Optional)
    namespaced_resource_restore_mode = string (Optional)
    no_namespaces = bool (Optional)
    volume_data_restore_policy = string (Optional)

    cluster_resource_restore_scope block "list" (Optional) {
      all_group_kinds = bool (Optional)
      no_group_kinds = bool (Optional)

      excluded_group_kinds block "list" (Optional) {
        resource_group = string (Optional)
        resource_kind = string (Optional)
      }

      selected_group_kinds block "list" (Optional) {
        resource_group = string (Optional)
        resource_kind = string (Optional)
      }
    }

    excluded_namespaces block "list" (Optional) {
      namespaces = ['list', 'string'] (Required)
    }

    restore_order block "list" (Optional) {

      group_kind_dependencies block "list" (Required) {

        requiring block "list" (Required) {
          resource_group = string (Optional)
          resource_kind = string (Optional)
        }

        satisfying block "list" (Required) {
          resource_group = string (Optional)
          resource_kind = string (Optional)
        }
      }
    }

    selected_applications block "list" (Optional) {

      namespaced_names block "list" (Required) {
        name = string (Required)
        namespace = string (Required)
      }
    }

    selected_namespaces block "list" (Optional) {
      namespaces = ['list', 'string'] (Required)
    }

    transformation_rules block "list" (Optional) {
      description = string (Optional)

      field_actions block "list" (Required) {
        op = string (Required)
        from_path = string (Optional)
        path = string (Optional)
        value = string (Optional)
      }

      resource_filter block "list" (Optional) {
        json_path = string (Optional)
        namespaces = ['list', 'string'] (Optional)

        group_kinds block "list" (Optional) {
          resource_group = string (Optional)
          resource_kind = string (Optional)
        }
      }
    }

    volume_data_restore_policy_bindings block "list" (Optional) {
      policy = string (Required)
      volume_type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
