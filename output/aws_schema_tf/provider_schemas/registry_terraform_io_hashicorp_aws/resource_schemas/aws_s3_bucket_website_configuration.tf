resource "aws_s3_bucket_website_configuration" "name" {
  bucket = string (Required)
  expected_bucket_owner = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  routing_rules = string (Optional, Computed)
  website_domain = string (Computed)
  website_endpoint = string (Computed)

  error_document block "list" (Optional) {
    key = string (Required)
  }

  index_document block "list" (Optional) {
    suffix = string (Required)
  }

  redirect_all_requests_to block "list" (Optional) {
    host_name = string (Required)
    protocol = string (Optional)
  }

  routing_rule block "list" (Optional) {

    condition block "list" (Optional) {
      http_error_code_returned_equals = string (Optional)
      key_prefix_equals = string (Optional)
    }

    redirect block "list" (Required) {
      host_name = string (Optional)
      http_redirect_code = string (Optional)
      protocol = string (Optional)
      replace_key_prefix_with = string (Optional)
      replace_key_with = string (Optional)
    }
  }
}
