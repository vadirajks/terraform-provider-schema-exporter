resource "aws_cloudfront_field_level_encryption_profile" "name" {
  name = string (Required)
  arn = string (Computed)
  caller_reference = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)

  encryption_entities block "list" (Required) {

    items block "set" (Optional) {
      provider_id = string (Required)
      public_key_id = string (Required)

      field_patterns block "list" (Required) {
        items = ['set', 'string'] (Optional)
      }
    }
  }
}
