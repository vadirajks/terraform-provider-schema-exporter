resource "aws_appfabric_app_bundle" "name" {
  arn = string (Computed)
  customer_managed_key_arn = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
