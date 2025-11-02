resource "aws_config_delivery_channel" "name" {
  s3_bucket_name = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  s3_key_prefix = string (Optional)
  s3_kms_key_arn = string (Optional)
  sns_topic_arn = string (Optional)

  snapshot_delivery_properties block "list" (Optional) {
    delivery_frequency = string (Optional)
  }
}
