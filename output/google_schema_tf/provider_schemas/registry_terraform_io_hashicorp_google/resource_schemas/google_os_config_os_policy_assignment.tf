resource "google_os_config_os_policy_assignment" "name" {
  location = string (Required)
  name = string (Required)
  baseline = bool (Computed)
  deleted = bool (Computed)
  description = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  revision_create_time = string (Computed)
  revision_id = string (Computed)
  rollout_state = string (Computed)
  skip_await_rollout = bool (Optional)
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
                generation = number (Optional)
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
                generation = number (Optional)
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
          permissions = string (Computed)

          file block "list" (Optional) {
            allow_insecure = bool (Optional)
            local_path = string (Optional)

            gcs block "list" (Optional) {
              bucket = string (Required)
              object = string (Required)
              generation = number (Optional)
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
                generation = number (Optional)
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
                generation = number (Optional)
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
                generation = number (Optional)
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

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
