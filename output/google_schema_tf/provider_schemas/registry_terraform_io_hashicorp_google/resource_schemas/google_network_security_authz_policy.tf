resource "google_network_security_authz_policy" "name" {
  action = string (Required)
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  custom_provider block "list" (Optional) {

    authz_extension block "list" (Optional) {
      resources = ['list', 'string'] (Required)
    }

    cloud_iap block "list" (Optional) {
      enabled = bool (Required)
    }
  }

  http_rules block "list" (Optional) {
    when = string (Optional)

    from block "list" (Optional) {

      not_sources block "list" (Optional) {

        ip_blocks block "list" (Optional) {
          length = number (Required)
          prefix = string (Required)
        }

        principals block "list" (Optional) {
          contains = string (Optional)
          exact = string (Optional)
          ignore_case = bool (Optional)
          prefix = string (Optional)
          principal_selector = string (Optional)
          suffix = string (Optional)

          principal block "list" (Optional) {
            contains = string (Optional)
            exact = string (Optional)
            ignore_case = bool (Optional)
            prefix = string (Optional)
            suffix = string (Optional)
          }
        }

        resources block "list" (Optional) {

          iam_service_account block "list" (Optional) {
            contains = string (Optional)
            exact = string (Optional)
            ignore_case = bool (Optional)
            prefix = string (Optional)
            suffix = string (Optional)
          }

          tag_value_id_set block "list" (Optional) {
            ids = ['list', 'string'] (Optional)
          }
        }
      }

      sources block "list" (Optional) {

        ip_blocks block "list" (Optional) {
          length = number (Required)
          prefix = string (Required)
        }

        principals block "list" (Optional) {
          contains = string (Optional)
          exact = string (Optional)
          ignore_case = bool (Optional)
          prefix = string (Optional)
          principal_selector = string (Optional)
          suffix = string (Optional)

          principal block "list" (Optional) {
            contains = string (Optional)
            exact = string (Optional)
            ignore_case = bool (Optional)
            prefix = string (Optional)
            suffix = string (Optional)
          }
        }

        resources block "list" (Optional) {

          iam_service_account block "list" (Optional) {
            contains = string (Optional)
            exact = string (Optional)
            ignore_case = bool (Optional)
            prefix = string (Optional)
            suffix = string (Optional)
          }

          tag_value_id_set block "list" (Optional) {
            ids = ['list', 'string'] (Optional)
          }
        }
      }
    }

    to block "list" (Optional) {

      not_operations block "list" (Optional) {
        methods = ['list', 'string'] (Optional)

        header_set block "list" (Optional) {

          headers block "list" (Optional) {
            name = string (Optional)

            value block "list" (Optional) {
              contains = string (Optional)
              exact = string (Optional)
              ignore_case = bool (Optional)
              prefix = string (Optional)
              suffix = string (Optional)
            }
          }
        }

        hosts block "list" (Optional) {
          contains = string (Optional)
          exact = string (Optional)
          ignore_case = bool (Optional)
          prefix = string (Optional)
          suffix = string (Optional)
        }

        paths block "list" (Optional) {
          contains = string (Optional)
          exact = string (Optional)
          ignore_case = bool (Optional)
          prefix = string (Optional)
          suffix = string (Optional)
        }
      }

      operations block "list" (Optional) {
        methods = ['list', 'string'] (Optional)

        header_set block "list" (Optional) {

          headers block "list" (Optional) {
            name = string (Optional)

            value block "list" (Optional) {
              contains = string (Optional)
              exact = string (Optional)
              ignore_case = bool (Optional)
              prefix = string (Optional)
              suffix = string (Optional)
            }
          }
        }

        hosts block "list" (Optional) {
          contains = string (Optional)
          exact = string (Optional)
          ignore_case = bool (Optional)
          prefix = string (Optional)
          suffix = string (Optional)
        }

        paths block "list" (Optional) {
          contains = string (Optional)
          exact = string (Optional)
          ignore_case = bool (Optional)
          prefix = string (Optional)
          suffix = string (Optional)
        }
      }
    }
  }

  target block "list" (Required) {
    load_balancing_scheme = string (Required)
    resources = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
