resource "aws_appmesh_virtual_gateway" "name" {
  mesh_name = string (Required)
  name = string (Required)
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

    backend_defaults block "list" (Optional) {

      client_policy block "list" (Optional) {

        tls block "list" (Optional) {
          enforce = bool (Optional)
          ports = ['set', 'number'] (Optional)

          certificate block "list" (Optional) {

            file block "list" (Optional) {
              certificate_chain = string (Required)
              private_key = string (Required)
            }

            sds block "list" (Optional) {
              secret_name = string (Required)
            }
          }

          validation block "list" (Required) {

            subject_alternative_names block "list" (Optional) {

              match block "list" (Required) {
                exact = ['set', 'string'] (Required)
              }
            }

            trust block "list" (Required) {

              acm block "list" (Optional) {
                certificate_authority_arns = ['set', 'string'] (Required)
              }

              file block "list" (Optional) {
                certificate_chain = string (Required)
              }

              sds block "list" (Optional) {
                secret_name = string (Required)
              }
            }
          }
        }
      }
    }

    listener block "list" (Required) {

      connection_pool block "list" (Optional) {

        grpc block "list" (Optional) {
          max_requests = number (Required)
        }

        http block "list" (Optional) {
          max_connections = number (Required)
          max_pending_requests = number (Optional)
        }

        http2 block "list" (Optional) {
          max_requests = number (Required)
        }
      }

      health_check block "list" (Optional) {
        healthy_threshold = number (Required)
        interval_millis = number (Required)
        protocol = string (Required)
        timeout_millis = number (Required)
        unhealthy_threshold = number (Required)
        path = string (Optional)
        port = number (Optional, Computed)
      }

      port_mapping block "list" (Required) {
        port = number (Required)
        protocol = string (Required)
      }

      tls block "list" (Optional) {
        mode = string (Required)

        certificate block "list" (Required) {

          acm block "list" (Optional) {
            certificate_arn = string (Required)
          }

          file block "list" (Optional) {
            certificate_chain = string (Required)
            private_key = string (Required)
          }

          sds block "list" (Optional) {
            secret_name = string (Required)
          }
        }

        validation block "list" (Optional) {

          subject_alternative_names block "list" (Optional) {

            match block "list" (Required) {
              exact = ['set', 'string'] (Required)
            }
          }

          trust block "list" (Required) {

            file block "list" (Optional) {
              certificate_chain = string (Required)
            }

            sds block "list" (Optional) {
              secret_name = string (Required)
            }
          }
        }
      }
    }

    logging block "list" (Optional) {

      access_log block "list" (Optional) {

        file block "list" (Optional) {
          path = string (Required)

          format block "list" (Optional) {
            text = string (Optional)

            json block "list" (Optional) {
              key = string (Required)
              value = string (Required)
            }
          }
        }
      }
    }
  }
}
