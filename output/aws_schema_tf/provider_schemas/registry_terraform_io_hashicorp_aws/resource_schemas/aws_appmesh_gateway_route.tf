resource "aws_appmesh_gateway_route" "name" {
  mesh_name = string (Required)
  name = string (Required)
  virtual_gateway_name = string (Required)
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

        target block "list" (Required) {
          port = number (Optional)

          virtual_service block "list" (Required) {
            virtual_service_name = string (Required)
          }
        }
      }

      match block "list" (Required) {
        service_name = string (Required)
        port = number (Optional)
      }
    }

    http2_route block "list" (Optional) {

      action block "list" (Required) {

        rewrite block "list" (Optional) {

          hostname block "list" (Optional) {
            default_target_hostname = string (Required)
          }

          path block "list" (Optional) {
            exact = string (Required)
          }

          prefix block "list" (Optional) {
            default_prefix = string (Optional)
            value = string (Optional)
          }
        }

        target block "list" (Required) {
          port = number (Optional)

          virtual_service block "list" (Required) {
            virtual_service_name = string (Required)
          }
        }
      }

      match block "list" (Required) {
        port = number (Optional)
        prefix = string (Optional)

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

        hostname block "list" (Optional) {
          exact = string (Optional)
          suffix = string (Optional)
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
    }

    http_route block "list" (Optional) {

      action block "list" (Required) {

        rewrite block "list" (Optional) {

          hostname block "list" (Optional) {
            default_target_hostname = string (Required)
          }

          path block "list" (Optional) {
            exact = string (Required)
          }

          prefix block "list" (Optional) {
            default_prefix = string (Optional)
            value = string (Optional)
          }
        }

        target block "list" (Required) {
          port = number (Optional)

          virtual_service block "list" (Required) {
            virtual_service_name = string (Required)
          }
        }
      }

      match block "list" (Required) {
        port = number (Optional)
        prefix = string (Optional)

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

        hostname block "list" (Optional) {
          exact = string (Optional)
          suffix = string (Optional)
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
    }
  }
}
