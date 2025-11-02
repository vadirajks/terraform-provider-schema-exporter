resource "aws_cloudfront_field_level_encryption_config" "name" {
  arn = string (Computed)
  caller_reference = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)

  content_type_profile_config block "list" (Required) {
    forward_when_content_type_is_unknown = bool (Required)

    content_type_profiles block "list" (Required) {

      items block "set" (Required) {
        content_type = string (Required)
        format = string (Required)
        profile_id = string (Optional)
      }
    }
  }

  query_arg_profile_config block "list" (Required) {
    forward_when_query_arg_profile_is_unknown = bool (Required)

    query_arg_profiles block "list" (Optional) {

      items block "set" (Optional) {
        profile_id = string (Required)
        query_arg = string (Required)
      }
    }
  }
}
