resource "google_dns_record_set" "name" {
  managed_zone = string (Required)
  name = string (Required)
  type = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  rrdatas = ['list', 'string'] (Optional)
  ttl = number (Optional)

  routing_policy block "list" (Optional) {
    enable_geo_fencing = bool (Optional)
    health_check = string (Optional)

    geo block "list" (Optional) {
      location = string (Required)
      rrdatas = ['list', 'string'] (Optional)

      health_checked_targets block "list" (Optional) {
        external_endpoints = ['list', 'string'] (Optional)

        internal_load_balancers block "list" (Optional) {
          ip_address = string (Required)
          ip_protocol = string (Required)
          network_url = string (Required)
          port = string (Required)
          project = string (Required)
          load_balancer_type = string (Optional)
          region = string (Optional)
        }
      }
    }

    primary_backup block "list" (Optional) {
      enable_geo_fencing_for_backups = bool (Optional)
      trickle_ratio = number (Optional)

      backup_geo block "list" (Required) {
        location = string (Required)
        rrdatas = ['list', 'string'] (Optional)

        health_checked_targets block "list" (Optional) {
          external_endpoints = ['list', 'string'] (Optional)

          internal_load_balancers block "list" (Optional) {
            ip_address = string (Required)
            ip_protocol = string (Required)
            network_url = string (Required)
            port = string (Required)
            project = string (Required)
            load_balancer_type = string (Optional)
            region = string (Optional)
          }
        }
      }

      primary block "list" (Required) {
        external_endpoints = ['list', 'string'] (Optional)

        internal_load_balancers block "list" (Optional) {
          ip_address = string (Required)
          ip_protocol = string (Required)
          network_url = string (Required)
          port = string (Required)
          project = string (Required)
          load_balancer_type = string (Optional)
          region = string (Optional)
        }
      }
    }

    wrr block "list" (Optional) {
      weight = number (Required)
      rrdatas = ['list', 'string'] (Optional)

      health_checked_targets block "list" (Optional) {
        external_endpoints = ['list', 'string'] (Optional)

        internal_load_balancers block "list" (Optional) {
          ip_address = string (Required)
          ip_protocol = string (Required)
          network_url = string (Required)
          port = string (Required)
          project = string (Required)
          load_balancer_type = string (Optional)
          region = string (Optional)
        }
      }
    }
  }
}
