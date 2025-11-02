resource "aws_elasticsearch_domain_saml_options" "name" {
  domain_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  saml_options block "list" (Optional) {
    enabled = bool (Optional)
    master_backend_role = string (Optional)
    master_user_name = string (Optional)
    roles_key = string (Optional)
    session_timeout_minutes = number (Optional)
    subject_key = string (Optional)

    idp block "list" (Optional) {
      entity_id = string (Required)
      metadata_content = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
    update = string (Optional)
  }
}
