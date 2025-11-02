resource "aws_lb_trust_store" "name" {
  ca_certificates_bundle_s3_bucket = string (Required)
  ca_certificates_bundle_s3_key = string (Required)
  arn = string (Computed)
  arn_suffix = string (Computed)
  ca_certificates_bundle_s3_object_version = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
