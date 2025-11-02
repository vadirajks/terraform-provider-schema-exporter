resource "aws_directory_service_region" "name" {
  directory_id = string (Required)
  region_name = string (Required)
  desired_number_of_domain_controllers = number (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_settings block "list" (Required) {
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
  }
}
