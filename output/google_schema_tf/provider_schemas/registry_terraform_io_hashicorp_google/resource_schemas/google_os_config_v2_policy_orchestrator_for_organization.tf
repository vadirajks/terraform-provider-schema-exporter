resource "google_os_config_v2_policy_orchestrator_for_organization" "name" {
  action = string (Required)
  organization_id = string (Required)
  policy_orchestrator_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  orchestration_state = ['list', ['object', {'current_iteration_state': ['list', ['object', {'error': ['list', ['object', {'code': 'number', 'details': ['list', ['object', {'type_url': 'string', 'value': 'string'}]], 'message': 'string'}]], 'failed_actions': 'string', 'finish_time': 'string', 'performed_actions': 'string', 'progress': 'number', 'rollout_resource': 'string', 'start_time': 'string', 'state': 'string'}]], 'previous_iteration_state': ['list', ['object', {'error': ['list', ['object', {'code': 'number', 'details': ['list', ['object', {'type_url': 'string', 'value': 'string'}]], 'message': 'string'}]], 'failed_actions': 'string', 'finish_time': 'string', 'performed_actions': 'string', 'progress': 'number', 'rollout_resource': 'string', 'start_time': 'string', 'state': 'string'}]]}]] (Computed)
  reconciling = bool (Computed)
  state = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  orchestrated_resource block "list" (Required) {
    id = string (Optional)

    os_policy_assignment_v1_payload block "list" (Optional) {
      baseline = bool (Computed)
      deleted = bool (Computed)
      description = string (Optional)
      etag = string (Optional)
      name = string (Optional)
      reconciling = bool (Computed)
      revision_create_time = string (Computed)
      revision_id = string (Computed)
      rollout_state = string (Computed)
      uid = string (Computed)

      instance_filter block "list" (Required) {
        all = bool (Optional)

        exclusion_labels block "list" (Optional) {
          labels = ['map', 'string'] (Optional)
        }

        inclusion_labels block "list" (Optional) {
          labels = ['map', 'string'] (Optional)
        }

        inventories block "list" (Optional) {
          os_short_name = string (Required)
          os_version = string (Optional)
        }
      }

      os_policies block "list" (Required) {
        id = string (Required)
        mode = string (Required)
        allow_no_resource_group_match = bool (Optional)
        description = string (Optional)

        resource_groups block "list" (Required) {

          inventory_filters block "list" (Optional) {
            os_short_name = string (Required)
            os_version = string (Optional)
          }

          resources block "list" (Required) {
            id = string (Required)

            exec block "list" (Optional) {

              enforce block "list" (Optional) {
                interpreter = string (Required)
                args = ['list', 'string'] (Optional)
                output_file_path = string (Optional)
                script = string (Optional)

                file block "list" (Optional) {
                  allow_insecure = bool (Optional)
                  local_path = string (Optional)

                  gcs block "list" (Optional) {
                    bucket = string (Required)
                    object = string (Required)
                    generation = string (Optional)
                  }

                  remote block "list" (Optional) {
                    uri = string (Required)
                    sha256_checksum = string (Optional)
                  }
                }
              }

              validate block "list" (Required) {
                interpreter = string (Required)
                args = ['list', 'string'] (Optional)
                output_file_path = string (Optional)
                script = string (Optional)

                file block "list" (Optional) {
                  allow_insecure = bool (Optional)
                  local_path = string (Optional)

                  gcs block "list" (Optional) {
                    bucket = string (Required)
                    object = string (Required)
                    generation = string (Optional)
                  }

                  remote block "list" (Optional) {
                    uri = string (Required)
                    sha256_checksum = string (Optional)
                  }
                }
              }
            }

            file block "list" (Optional) {
              path = string (Required)
              state = string (Required)
              content = string (Optional)
              permissions = string (Optional)

              file block "list" (Optional) {
                allow_insecure = bool (Optional)
                local_path = string (Optional)

                gcs block "list" (Optional) {
                  bucket = string (Required)
                  object = string (Required)
                  generation = string (Optional)
                }

                remote block "list" (Optional) {
                  uri = string (Required)
                  sha256_checksum = string (Optional)
                }
              }
            }

            pkg block "list" (Optional) {
              desired_state = string (Required)

              apt block "list" (Optional) {
                name = string (Required)
              }

              deb block "list" (Optional) {
                pull_deps = bool (Optional)

                source block "list" (Required) {
                  allow_insecure = bool (Optional)
                  local_path = string (Optional)

                  gcs block "list" (Optional) {
                    bucket = string (Required)
                    object = string (Required)
                    generation = string (Optional)
                  }

                  remote block "list" (Optional) {
                    uri = string (Required)
                    sha256_checksum = string (Optional)
                  }
                }
              }

              googet block "list" (Optional) {
                name = string (Required)
              }

              msi block "list" (Optional) {
                properties = ['list', 'string'] (Optional)

                source block "list" (Required) {
                  allow_insecure = bool (Optional)
                  local_path = string (Optional)

                  gcs block "list" (Optional) {
                    bucket = string (Required)
                    object = string (Required)
                    generation = string (Optional)
                  }

                  remote block "list" (Optional) {
                    uri = string (Required)
                    sha256_checksum = string (Optional)
                  }
                }
              }

              rpm block "list" (Optional) {
                pull_deps = bool (Optional)

                source block "list" (Required) {
                  allow_insecure = bool (Optional)
                  local_path = string (Optional)

                  gcs block "list" (Optional) {
                    bucket = string (Required)
                    object = string (Required)
                    generation = string (Optional)
                  }

                  remote block "list" (Optional) {
                    uri = string (Required)
                    sha256_checksum = string (Optional)
                  }
                }
              }

              yum block "list" (Optional) {
                name = string (Required)
              }

              zypper block "list" (Optional) {
                name = string (Required)
              }
            }

            repository block "list" (Optional) {

              apt block "list" (Optional) {
                archive_type = string (Required)
                components = ['list', 'string'] (Required)
                distribution = string (Required)
                uri = string (Required)
                gpg_key = string (Optional)
              }

              goo block "list" (Optional) {
                name = string (Required)
                url = string (Required)
              }

              yum block "list" (Optional) {
                base_url = string (Required)
                id = string (Required)
                display_name = string (Optional)
                gpg_keys = ['list', 'string'] (Optional)
              }

              zypper block "list" (Optional) {
                base_url = string (Required)
                id = string (Required)
                display_name = string (Optional)
                gpg_keys = ['list', 'string'] (Optional)
              }
            }
          }
        }
      }

      rollout block "list" (Required) {
        min_wait_duration = string (Required)

        disruption_budget block "list" (Required) {
          fixed = number (Optional)
          percent = number (Optional)
        }
      }
    }
  }

  orchestration_scope block "list" (Optional) {

    selectors block "list" (Optional) {

      location_selector block "list" (Optional) {
        included_locations = ['list', 'string'] (Optional)
      }

      resource_hierarchy_selector block "list" (Optional) {
        included_folders = ['list', 'string'] (Optional)
        included_projects = ['list', 'string'] (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
