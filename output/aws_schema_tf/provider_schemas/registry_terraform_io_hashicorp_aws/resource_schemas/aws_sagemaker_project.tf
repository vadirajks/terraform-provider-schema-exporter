resource "aws_sagemaker_project" "name" {
  project_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  project_description = string (Optional)
  project_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  service_catalog_provisioning_details block "list" (Required) {
    product_id = string (Required)
    path_id = string (Optional)
    provisioning_artifact_id = string (Optional, Computed)

    provisioning_parameter block "list" (Optional) {
      key = string (Required)
      value = string (Optional)
    }
  }
}
