resource "aws_cognito_user_pool_ui_customization" "name" {
  user_pool_id = string (Required)
  client_id = string (Optional)
  creation_date = string (Computed)
  css = string (Optional)
  css_version = string (Computed)
  id = string (Optional, Computed)
  image_file = string (Optional)
  image_url = string (Computed)
  last_modified_date = string (Computed)
  region = string (Optional, Computed)
}
