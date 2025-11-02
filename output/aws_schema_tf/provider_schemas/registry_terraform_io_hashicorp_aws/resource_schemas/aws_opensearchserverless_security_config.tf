resource "aws_opensearchserverless_security_config" "name" {
  name = string (Required)
  type = string (Required)
  config_version = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)

  saml_options block "list" (Optional) {
    metadata = string (Required)
    group_attribute = string (Optional)
    session_timeout = number (Optional, Computed)
    user_attribute = string (Optional)
  }
}
