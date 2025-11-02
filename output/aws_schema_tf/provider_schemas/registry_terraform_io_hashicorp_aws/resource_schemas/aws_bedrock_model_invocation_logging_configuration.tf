resource "aws_bedrock_model_invocation_logging_configuration" "name" {
  id = string (Computed)
  region = string (Optional, Computed)

  logging_config block "list" (Optional) {
    embedding_data_delivery_enabled = bool (Optional, Computed)
    image_data_delivery_enabled = bool (Optional, Computed)
    text_data_delivery_enabled = bool (Optional, Computed)
    video_data_delivery_enabled = bool (Optional, Computed)

    cloudwatch_config block "list" (Optional) {
      log_group_name = string (Optional)
      role_arn = string (Optional)

      large_data_delivery_s3_config block "list" (Optional) {
        bucket_name = string (Optional)
        key_prefix = string (Optional)
      }
    }

    s3_config block "list" (Optional) {
      bucket_name = string (Optional)
      key_prefix = string (Optional)
    }
  }
}
