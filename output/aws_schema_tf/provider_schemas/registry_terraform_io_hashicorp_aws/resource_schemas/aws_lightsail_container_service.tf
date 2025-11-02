resource "aws_lightsail_container_service" "name" {
  name = string (Required)
  power = string (Required)
  scale = number (Required)
  arn = string (Computed)
  availability_zone = string (Computed)
  created_at = string (Computed)
  id = string (Optional, Computed)
  is_disabled = bool (Optional)
  power_id = string (Computed)
  principal_arn = string (Computed)
  private_domain_name = string (Computed)
  region = string (Optional, Computed)
  resource_type = string (Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  url = string (Computed)

  private_registry_access block "list" (Optional) {

    ecr_image_puller_role block "list" (Optional) {
      is_active = bool (Optional)
      principal_arn = string (Computed)
    }
  }

  public_domain_names block "list" (Optional) {

    certificate block "set" (Required) {
      certificate_name = string (Required)
      domain_names = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
