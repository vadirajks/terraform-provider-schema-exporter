resource "aws_appmesh_route" "name" {
  mesh_name = string (Required)
  name = string (Required)
  virtual_router_name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  spec block "list" (Required) {
    priority = number (Optional)

    grpc_route block "list" (Optional) {

      action block "list" (Required) {

        weighted_target block "set" (Required) {
          virtual_node = string (Required)
          weight = number (Required)
          port = number (Optional, Computed)
        }
      }

      match block "list" (Optional) {
        method_name = string (Optional)
        port = number (Optional)
        prefix = string (Optional)
        service_name = string (Optional)

        metadata block "set" (Optional) {
          name = string (Required)
          invert = bool (Optional)

          match block "list" (Optional) {
            exact = string (Optional)
            prefix = string (Optional)
            regex = string (Optional)
            suffix = string (Optional)

            range block "list" (Optional) {
              end = number (Required)
              start = number (Required)
            }
          }
        }
      }

      retry_policy block "list" (Optional) {
        max_retries = number (Required)
        grpc_retry_events = ['set', 'string'] (Optional)
        http_retry_events = ['set', 'string'] (Optional)
        tcp_retry_events = ['set', 'string'] (Optional)

        per_retry_timeout block "list" (Required) {
          unit = string (Required)
          value = number (Required)
        }
      }

      timeout block "list" (Optional) {

        idle block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }

        per_request block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }
      }
    }

    http2_route block "list" (Optional) {

      action block "list" (Required) {

        weighted_target block "set" (Required) {
          virtual_node = string (Required)
          weight = number (Required)
          port = number (Optional, Computed)
        }
      }

      match block "list" (Required) {
        method = string (Optional)
        port = number (Optional)
        prefix = string (Optional)
        scheme = string (Optional)

        header block "set" (Optional) {
          name = string (Required)
          invert = bool (Optional)

          match block "list" (Optional) {
            exact = string (Optional)
            prefix = string (Optional)
            regex = string (Optional)
            suffix = string (Optional)

            range block "list" (Optional) {
              end = number (Required)
              start = number (Required)
            }
          }
        }

        path block "list" (Optional) {
          exact = string (Optional)
          regex = string (Optional)
        }

        query_parameter block "set" (Optional) {
          name = string (Required)

          match block "list" (Optional) {
            exact = string (Optional)
          }
        }
      }

      retry_policy block "list" (Optional) {
        max_retries = number (Required)
        http_retry_events = ['set', 'string'] (Optional)
        tcp_retry_events = ['set', 'string'] (Optional)

        per_retry_timeout block "list" (Required) {
          unit = string (Required)
          value = number (Required)
        }
      }

      timeout block "list" (Optional) {

        idle block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }

        per_request block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }
      }
    }

    http_route block "list" (Optional) {

      action block "list" (Required) {

        weighted_target block "set" (Required) {
          virtual_node = string (Required)
          weight = number (Required)
          port = number (Optional, Computed)
        }
      }

      match block "list" (Required) {
        method = string (Optional)
        port = number (Optional)
        prefix = string (Optional)
        scheme = string (Optional)

        header block "set" (Optional) {
          name = string (Required)
          invert = bool (Optional)

          match block "list" (Optional) {
            exact = string (Optional)
            prefix = string (Optional)
            regex = string (Optional)
            suffix = string (Optional)

            range block "list" (Optional) {
              end = number (Required)
              start = number (Required)
            }
          }
        }

        path block "list" (Optional) {
          exact = string (Optional)
          regex = string (Optional)
        }

        query_parameter block "set" (Optional) {
          name = string (Required)

          match block "list" (Optional) {
            exact = string (Optional)
          }
        }
      }

      retry_policy block "list" (Optional) {
        max_retries = number (Required)
        http_retry_events = ['set', 'string'] (Optional)
        tcp_retry_events = ['set', 'string'] (Optional)

        per_retry_timeout block "list" (Required) {
          unit = string (Required)
          value = number (Required)
        }
      }

      timeout block "list" (Optional) {

        idle block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }

        per_request block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }
      }
    }

    tcp_route block "list" (Optional) {

      action block "list" (Required) {

        weighted_target block "set" (Required) {
          virtual_node = string (Required)
          weight = number (Required)
          port = number (Optional, Computed)
        }
      }

      match block "list" (Optional) {
        port = number (Optional)
      }

      timeout block "list" (Optional) {

        idle block "list" (Optional) {
          unit = string (Required)
          value = number (Required)
        }
      }
    }
  }
}
