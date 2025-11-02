resource "aws_ecrpublic_repository" "name" {
  repository_name = string (Required)
  arn = string (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)
  repository_uri = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  catalog_data block "list" (Optional) {
    about_text = string (Optional)
    architectures = ['set', 'string'] (Optional)
    description = string (Optional)
    logo_image_blob = string (Optional, Computed)
    operating_systems = ['set', 'string'] (Optional)
    usage_text = string (Optional)
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
