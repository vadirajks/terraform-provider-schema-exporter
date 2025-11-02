resource "aws_kendra_experience" "name" {
  index_id = string (Required)
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  endpoints = ['set', ['object', {'endpoint': 'string', 'endpoint_type': 'string'}]] (Computed)
  experience_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)

  configuration block "list" (Optional) {

    content_source_configuration block "list" (Optional) {
      data_source_ids = ['set', 'string'] (Optional)
      direct_put_content = bool (Optional)
      faq_ids = ['set', 'string'] (Optional)
    }

    user_identity_configuration block "list" (Optional) {
      identity_attribute_name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
