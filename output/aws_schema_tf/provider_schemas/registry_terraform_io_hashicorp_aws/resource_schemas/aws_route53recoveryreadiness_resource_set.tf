resource "aws_route53recoveryreadiness_resource_set" "name" {
  resource_set_name = string (Required)
  resource_set_type = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  resources block "list" (Required) {
    component_id = string (Computed)
    readiness_scopes = ['list', 'string'] (Optional)
    resource_arn = string (Optional)

    dns_target_resource block "list" (Optional) {
      domain_name = string (Required)
      hosted_zone_arn = string (Optional)
      record_set_id = string (Optional)
      record_type = string (Optional)

      target_resource block "list" (Optional) {

        nlb_resource block "list" (Optional) {
          arn = string (Optional)
        }

        r53_resource block "list" (Optional) {
          domain_name = string (Optional)
          record_set_id = string (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
