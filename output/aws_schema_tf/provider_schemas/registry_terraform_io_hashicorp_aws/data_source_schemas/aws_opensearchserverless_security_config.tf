data "aws_opensearchserverless_security_config" "name" {
  id = string (Required)
  config_version = string (Computed)
  created_date = string (Computed)
  description = string (Computed)
  last_modified_date = string (Computed)
  region = string (Optional, Computed)
  type = string (Computed)

  saml_options block "list" (Optional) {
    group_attribute = string (Computed)
    metadata = string (Computed)
    session_timeout = number (Computed)
    user_attribute = string (Computed)
  }
}
