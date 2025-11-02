resource "google_migration_center_preference_set" "name" {
  location = string (Required)
  preference_set_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  virtual_machine_preferences block "list" (Optional) {
    commitment_plan = string (Optional)
    sizing_optimization_strategy = string (Optional)
    target_product = string (Optional)

    compute_engine_preferences block "list" (Optional) {
      license_type = string (Optional)

      machine_preferences block "list" (Optional) {

        allowed_machine_series block "list" (Optional) {
          code = string (Optional)
        }
      }
    }

    region_preferences block "list" (Optional) {
      preferred_regions = ['list', 'string'] (Optional)
    }

    sole_tenancy_preferences block "list" (Optional) {
      commitment_plan = string (Optional)
      cpu_overcommit_ratio = number (Optional)
      host_maintenance_policy = string (Optional)

      node_types block "list" (Optional) {
        node_name = string (Optional)
      }
    }

    vmware_engine_preferences block "list" (Optional) {
      commitment_plan = string (Optional)
      cpu_overcommit_ratio = number (Optional)
      memory_overcommit_ratio = number (Optional)
      storage_deduplication_compression_ratio = number (Optional)
    }
  }
}
