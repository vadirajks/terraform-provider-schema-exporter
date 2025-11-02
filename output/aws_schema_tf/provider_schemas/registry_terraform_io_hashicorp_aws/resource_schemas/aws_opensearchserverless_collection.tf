resource "aws_opensearchserverless_collection" "name" {
  name = string (Required)
  arn = string (Computed)
  collection_endpoint = string (Computed)
  dashboard_endpoint = string (Computed)
  description = string (Optional)
  id = string (Computed)
  kms_key_arn = string (Computed)
  region = string (Optional, Computed)
  standby_replicas = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  type = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
