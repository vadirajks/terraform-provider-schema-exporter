resource "aws_servicecatalog_provisioning_artifact" "name" {
  product_id = string (Required)
  accept_language = string (Optional)
  active = bool (Optional)
  created_time = string (Computed)
  description = string (Optional, Computed)
  disable_template_validation = bool (Optional)
  guidance = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  provisioning_artifact_id = string (Computed)
  region = string (Optional, Computed)
  template_physical_id = string (Optional)
  template_url = string (Optional)
  type = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
