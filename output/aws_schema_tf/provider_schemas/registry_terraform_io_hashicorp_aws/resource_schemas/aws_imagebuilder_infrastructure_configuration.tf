resource "aws_imagebuilder_infrastructure_configuration" "name" {
  instance_profile_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  date_created = string (Computed)
  date_updated = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  instance_types = ['set', 'string'] (Optional)
  key_pair = string (Optional)
  region = string (Optional, Computed)
  resource_tags = ['map', 'string'] (Optional)
  security_group_ids = ['set', 'string'] (Optional)
  sns_topic_arn = string (Optional)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  terminate_instance_on_failure = bool (Optional)

  instance_metadata_options block "list" (Optional) {
    http_put_response_hop_limit = number (Optional)
    http_tokens = string (Optional)
  }

  logging block "list" (Optional) {

    s3_logs block "list" (Required) {
      s3_bucket_name = string (Required)
      s3_key_prefix = string (Optional)
    }
  }

  placement block "list" (Optional) {
    availability_zone = string (Optional)
    host_id = string (Optional)
    host_resource_group_arn = string (Optional)
    tenancy = string (Optional)
  }
}
