resource "google_access_context_manager_service_perimeters" "name" {
  parent = string (Required)
  id = string (Optional, Computed)

  service_perimeters block "list" (Optional) {
    name = string (Required)
    title = string (Required)
    create_time = string (Computed)
    description = string (Optional)
    perimeter_type = string (Optional)
    update_time = string (Computed)
    use_explicit_dry_run_spec = bool (Optional)

    spec block "list" (Optional) {
      access_levels = ['set', 'string'] (Optional)
      resources = ['set', 'string'] (Optional)
      restricted_services = ['set', 'string'] (Optional)

      egress_policies block "list" (Optional) {
        title = string (Optional)

        egress_from block "list" (Optional) {
          identities = ['set', 'string'] (Optional)
          identity_type = string (Optional)
          source_restriction = string (Optional)

          sources block "list" (Optional) {
            access_level = string (Optional)
            resource = string (Optional)
          }
        }

        egress_to block "list" (Optional) {
          external_resources = ['set', 'string'] (Optional)
          resources = ['set', 'string'] (Optional)
          roles = ['set', 'string'] (Optional)

          operations block "list" (Optional) {
            service_name = string (Optional)

            method_selectors block "list" (Optional) {
              method = string (Optional)
              permission = string (Optional)
            }
          }
        }
      }

      ingress_policies block "list" (Optional) {
        title = string (Optional)

        ingress_from block "list" (Optional) {
          identities = ['set', 'string'] (Optional)
          identity_type = string (Optional)

          sources block "list" (Optional) {
            access_level = string (Optional)
            resource = string (Optional)
          }
        }

        ingress_to block "list" (Optional) {
          resources = ['set', 'string'] (Optional)
          roles = ['set', 'string'] (Optional)

          operations block "list" (Optional) {
            service_name = string (Optional)

            method_selectors block "list" (Optional) {
              method = string (Optional)
              permission = string (Optional)
            }
          }
        }
      }

      vpc_accessible_services block "list" (Optional) {
        allowed_services = ['set', 'string'] (Optional)
        enable_restriction = bool (Optional)
      }
    }

    status block "list" (Optional) {
      access_levels = ['set', 'string'] (Optional)
      resources = ['set', 'string'] (Optional)
      restricted_services = ['set', 'string'] (Optional)

      egress_policies block "list" (Optional) {
        title = string (Optional)

        egress_from block "list" (Optional) {
          identities = ['set', 'string'] (Optional)
          identity_type = string (Optional)
          source_restriction = string (Optional)

          sources block "list" (Optional) {
            access_level = string (Optional)
            resource = string (Optional)
          }
        }

        egress_to block "list" (Optional) {
          external_resources = ['set', 'string'] (Optional)
          resources = ['set', 'string'] (Optional)
          roles = ['set', 'string'] (Optional)

          operations block "list" (Optional) {
            service_name = string (Optional)

            method_selectors block "list" (Optional) {
              method = string (Optional)
              permission = string (Optional)
            }
          }
        }
      }

      ingress_policies block "set" (Optional) {
        title = string (Optional)

        ingress_from block "list" (Optional) {
          identities = ['set', 'string'] (Optional)
          identity_type = string (Optional)

          sources block "list" (Optional) {
            access_level = string (Optional)
            resource = string (Optional)
          }
        }

        ingress_to block "list" (Optional) {
          resources = ['set', 'string'] (Optional)
          roles = ['set', 'string'] (Optional)

          operations block "list" (Optional) {
            service_name = string (Optional)

            method_selectors block "list" (Optional) {
              method = string (Optional)
              permission = string (Optional)
            }
          }
        }
      }

      vpc_accessible_services block "list" (Optional) {
        allowed_services = ['set', 'string'] (Optional)
        enable_restriction = bool (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
