resource "aws_appfabric_ingestion" "name" {
  app = string (Required)
  app_bundle_arn = string (Required)
  ingestion_type = string (Required)
  tenant_id = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
