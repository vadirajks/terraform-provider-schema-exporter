resource "aws_vpclattice_listener_rule" "name" {
  listener_identifier = string (Required)
  name = string (Required)
  priority = number (Required)
  service_identifier = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  rule_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  action block "list" (Required) {

    fixed_response block "list" (Optional) {
      status_code = number (Required)
    }

    forward block "list" (Optional) {

      target_groups block "list" (Required) {
        target_group_identifier = string (Required)
        weight = number (Optional)
      }
    }
  }

  match block "list" (Required) {

    http_match block "list" (Required) {
      method = string (Optional)

      header_matches block "list" (Optional) {
        name = string (Required)
        case_sensitive = bool (Optional)

        match block "list" (Required) {
          contains = string (Optional)
          exact = string (Optional)
          prefix = string (Optional)
        }
      }

      path_match block "list" (Optional) {
        case_sensitive = bool (Optional)

        match block "list" (Required) {
          exact = string (Optional)
          prefix = string (Optional)
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
