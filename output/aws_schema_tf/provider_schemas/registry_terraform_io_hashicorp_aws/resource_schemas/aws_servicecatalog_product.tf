resource "aws_servicecatalog_product" "name" {
  name = string (Required)
  owner = string (Required)
  type = string (Required)
  accept_language = string (Optional)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional, Computed)
  distributor = string (Optional, Computed)
  has_default_path = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  support_description = string (Optional, Computed)
  support_email = string (Optional, Computed)
  support_url = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  provisioning_artifact_parameters block "list" (Required) {
    description = string (Optional)
    disable_template_validation = bool (Optional)
    name = string (Optional)
    template_physical_id = string (Optional)
    template_url = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
