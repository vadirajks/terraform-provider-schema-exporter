resource "aws_transfer_web_app" "name" {
  access_endpoint = string (Optional, Computed)
  arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  web_app_endpoint_policy = string (Optional, Computed)
  web_app_id = string (Computed)
  web_app_units = ['list', ['object', {'provisioned': 'number'}]] (Optional, Computed)

  identity_provider_details block "list" (Optional) {

    identity_center_config block "list" (Optional) {
      application_arn = string (Computed)
      instance_arn = string (Optional)
      role = string (Optional)
    }
  }
}
