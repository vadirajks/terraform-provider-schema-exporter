resource "google_clouddeploy_delivery_pipeline" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  condition = ['list', ['object', {'pipeline_ready_condition': ['list', ['object', {'status': 'bool', 'update_time': 'string'}]], 'targets_present_condition': ['list', ['object', {'missing_targets': ['list', 'string'], 'status': 'bool', 'update_time': 'string'}]], 'targets_type_condition': ['list', ['object', {'error_details': 'string', 'status': 'bool'}]]}]] (Computed)
  create_time = string (Computed)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  suspended = bool (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  serial_pipeline block "list" (Optional) {

    stages block "list" (Optional) {
      profiles = ['list', 'string'] (Optional)
      target_id = string (Optional)

      deploy_parameters block "list" (Optional) {
        values = ['map', 'string'] (Required)
        match_target_labels = ['map', 'string'] (Optional)
      }

      strategy block "list" (Optional) {

        canary block "list" (Optional) {

          canary_deployment block "list" (Optional) {
            percentages = ['list', 'number'] (Required)
            verify = bool (Optional)

            postdeploy block "list" (Optional) {
              actions = ['list', 'string'] (Optional)
            }

            predeploy block "list" (Optional) {
              actions = ['list', 'string'] (Optional)
            }
          }

          custom_canary_deployment block "list" (Optional) {

            phase_configs block "list" (Required) {
              percentage = number (Required)
              phase_id = string (Required)
              profiles = ['list', 'string'] (Optional)
              verify = bool (Optional)

              postdeploy block "list" (Optional) {
                actions = ['list', 'string'] (Optional)
              }

              predeploy block "list" (Optional) {
                actions = ['list', 'string'] (Optional)
              }
            }
          }

          runtime_config block "list" (Optional) {

            cloud_run block "list" (Optional) {
              automatic_traffic_control = bool (Optional)
              canary_revision_tags = ['list', 'string'] (Optional)
              prior_revision_tags = ['list', 'string'] (Optional)
              stable_revision_tags = ['list', 'string'] (Optional)
            }

            kubernetes block "list" (Optional) {

              gateway_service_mesh block "list" (Optional) {
                deployment = string (Required)
                http_route = string (Required)
                service = string (Required)
                pod_selector_label = string (Optional)
                route_update_wait_time = string (Optional)
                stable_cutback_duration = string (Optional)

                route_destinations block "list" (Optional) {
                  destination_ids = ['list', 'string'] (Required)
                  propagate_service = bool (Optional)
                }
              }

              service_networking block "list" (Optional) {
                deployment = string (Required)
                service = string (Required)
                disable_pod_overprovisioning = bool (Optional)
                pod_selector_label = string (Optional)
              }
            }
          }
        }

        standard block "list" (Optional) {
          verify = bool (Optional)

          postdeploy block "list" (Optional) {
            actions = ['list', 'string'] (Optional)
          }

          predeploy block "list" (Optional) {
            actions = ['list', 'string'] (Optional)
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
