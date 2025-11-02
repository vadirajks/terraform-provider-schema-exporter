resource "aws_vpclattice_listener" "name" {
  name = string (Required)
  protocol = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  last_updated_at = string (Computed)
  listener_id = string (Computed)
  port = number (Optional, Computed)
  region = string (Optional, Computed)
  service_arn = string (Optional, Computed)
  service_identifier = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  default_action block "list" (Required) {

    fixed_response block "list" (Optional) {
      status_code = number (Required)
    }

    forward block "list" (Optional) {

      target_groups block "list" (Optional) {
        target_group_identifier = string (Optional)
        weight = number (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
