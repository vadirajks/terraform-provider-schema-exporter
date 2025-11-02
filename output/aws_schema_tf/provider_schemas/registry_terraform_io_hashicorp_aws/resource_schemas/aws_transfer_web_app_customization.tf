resource "aws_transfer_web_app_customization" "name" {
  web_app_id = string (Required)
  favicon_file = string (Optional, Computed)
  logo_file = string (Optional, Computed)
  region = string (Optional, Computed)
  title = string (Optional)
}
