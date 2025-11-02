resource "aws_networkfirewall_tls_inspection_configuration" "name" {
  name = string (Required)
  arn = string (Computed)
  certificate_authority = ['list', ['object', {'certificate_arn': 'string', 'certificate_serial': 'string', 'status': 'string', 'status_message': 'string'}]] (Computed)
  certificates = ['list', ['object', {'certificate_arn': 'string', 'certificate_serial': 'string', 'status': 'string', 'status_message': 'string'}]] (Computed)
  description = string (Optional)
  encryption_configuration = ['list', ['object', {'key_id': 'string', 'type': 'string'}]] (Optional, Computed)
  id = string (Computed)
  number_of_associations = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  tls_inspection_configuration_id = string (Computed)
  update_token = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  tls_inspection_configuration block "list" (Optional) {

    server_certificate_configuration block "list" (Optional) {
      certificate_authority_arn = string (Optional)

      check_certificate_revocation_status block "list" (Optional) {
        revoked_status_action = string (Optional)
        unknown_status_action = string (Optional)
      }

      scope block "list" (Optional) {
        protocols = ['set', 'number'] (Required)

        destination block "list" (Optional) {
          address_definition = string (Required)
        }

        destination_ports block "list" (Optional) {
          from_port = number (Required)
          to_port = number (Required)
        }

        source block "list" (Optional) {
          address_definition = string (Required)
        }

        source_ports block "list" (Optional) {
          from_port = number (Required)
          to_port = number (Required)
        }
      }

      server_certificate block "list" (Optional) {
        resource_arn = string (Optional)
      }
    }
  }
}
